import 'package:ebook_app/bottomNavBar.dart';
import 'package:ebook_app/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ebook_app/constants.dart';
import 'package:ebook_app/services/helper.dart';
import 'package:ebook_app/ui/auth/authentication_bloc.dart';
import 'package:ebook_app/ui/auth/onBoarding/data.dart';
import 'package:ebook_app/ui/auth/onBoarding/on_boarding_screen.dart';
import 'package:ebook_app/ui/auth/welcome/welcome_screen.dart';
import 'package:ebook_app/screens/home_screen.dart';


class LauncherScreen extends StatefulWidget {
  const LauncherScreen({Key? key}) : super(key: key);

  @override
  State<LauncherScreen> createState() => _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AuthenticationBloc>().add(CheckFirstRunEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(colorPrimary),
      body: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          switch (state.authState) {
            case AuthState.firstRun:
              pushReplacement(
                  context,
                  WelcomeScreen());
              break;
            case AuthState.authenticated:
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FirstScreen(user: state.user!)),
                );
              break;
            case AuthState.unauthenticated:
              pushReplacement(context, const WelcomeScreen());
              break;
          }
        },
        child: const Center(
          child: CircularProgressIndicator.adaptive(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation(Color(colorPrimary)),
          ),
        ),
      ),
    );
  }
}
