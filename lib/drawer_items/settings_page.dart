import 'package:ebook_app/bottomNavBar.dart';
import 'package:ebook_app/constants.dart';
import 'package:ebook_app/model/user.dart';
import 'package:ebook_app/screens/signin_screen.dart';
import 'package:ebook_app/services/helper.dart';
import 'package:ebook_app/ui/auth/resetPasswordScreen/reset_password_cubit.dart';
import 'package:ebook_app/ui/loading_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationSwitch = false;
  bool privacySwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        toolbarHeight: 65,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Settings'),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ListTile(
            //   title: Text('Notification Settings',
            //       style: TextStyle(color: Colors.white)),
            //   trailing: Switch(
            //     value: notificationSwitch,
            //     onChanged: (value) {
            //       setState(() {
            //         notificationSwitch = value;
            //         // Handle the switch state here, e.g., save it to preferences or Firebase.
            //       });
            //     },
            //   ),
            // ),
            Divider(color: Colors.grey),
            // ListTile(
            //   title: Text('Privacy', style: TextStyle(color: Colors.white)),
            //   trailing: Switch(
            //     value: privacySwitch,
            //     onChanged: (value) {
            //       setState(() {
            //         privacySwitch = value;
            //         // Handle the switch state here, e.g., save it to preferences or Firebase.
            //       });
            //     },
            //   ),
            // ),
            Divider(color: Colors.grey),
            ListTile(
              title: Text('Account', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AccountSettingsPage()),
                );
              },
            ),
            Divider(color: Colors.grey),
            // Tambahkan lebih banyak daftar pengaturan sesuai kebutuhan Anda.
          ],
        ),
      ),
    );
  }
}

class AccountSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        toolbarHeight: 65,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Account Settings'),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Change Password',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePasswordPage()),
                );
              },
            ),
            Divider(color: Colors.grey),
            // ListTile(
            //   title: Text('Change Username',
            //       style: TextStyle(color: Colors.white)),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => ChangeEmailPage()),
            //     );
            //   },
            // ),
            Divider(color: Colors.grey),
            // Tambahkan lebih banyak pengaturan akun seperti mengganti nama, menghubungkan akun sosial media, dsb.
          ],
        ),
      ),
    );
  }
}

class ChangePasswordPage extends StatelessWidget {
  final GlobalKey<FormState> _key = GlobalKey();
  AutovalidateMode _validate = AutovalidateMode.disabled;
  String _emailAddress = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ResetPasswordCubit>(
      create: (context) => ResetPasswordCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(
                  color: isDarkMode(context) ? Colors.white : Colors.black),
              elevation: 0.0,
            ),
            body: BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
              listenWhen: (old, current) => old != current,
              listener: (context, state) async {
                if (state is ResetPasswordDone) {
                  context.read<LoadingCubit>().hideLoading();
                  showSnackBar(context,
                      'Reset password email has been sent, Please check your email.');
                  Navigator.pop(context);
                } else if (state is ValidResetPasswordField) {
                  await context
                      .read<LoadingCubit>()
                      .showLoading(context, 'Sending Email...', false);

                  context
                      .read<ResetPasswordCubit>()
                      .resetPassword(_emailAddress);
                } else if (state is ResetPasswordFailureState) {
                  showSnackBar(context, state.errorMessage);
                }
              },
              buildWhen: (old, current) =>
                  current is ResetPasswordFailureState && old != current,
              builder: (context, state) {
                if (state is ResetPasswordFailureState) {
                  _validate = AutovalidateMode.onUserInteraction;
                }
                return Form(
                  autovalidateMode: _validate,
                  key: _key,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 32.0, right: 16.0, left: 16.0),
                          child: Text(
                            'Reset Password',
                            style: TextStyle(
                                color: Color(colorPrimary),
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 32.0, right: 24.0, left: 24.0),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            textInputAction: TextInputAction.done,
                            validator: validateEmail,
                            onFieldSubmitted: (_) => context
                                .read<ResetPasswordCubit>()
                                .checkValidField(_key),
                            onSaved: (val) => _emailAddress = val!,
                            style: const TextStyle(fontSize: 18.0),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: const Color(colorPrimary),
                            decoration: getInputDecoration(
                                hint: 'E-mail',
                                darkMode: isDarkMode(context),
                                errorColor: Theme.of(context).errorColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 40.0, left: 40.0, top: 40),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size.fromWidth(
                                  MediaQuery.of(context).size.width / 1.5),
                              backgroundColor: const Color(colorPrimary),
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: const BorderSide(
                                  color: Color(colorPrimary),
                                ),
                              ),
                            ),
                            child: const Text(
                              'Send Email',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () => context
                                .read<ResetPasswordCubit>()
                                .checkValidField(_key),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ChangeEmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        toolbarHeight: 65,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Change Email'),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tambahkan UI untuk mengganti alamat email, seperti TextField untuk alamat email baru dan konfirmasi alamat email.
            // Tambahkan logika untuk menyimpan perubahan alamat email.
          ],
        ),
      ),
    );
  }
}
