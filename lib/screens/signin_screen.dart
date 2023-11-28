import 'package:ebook_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'forgot_password.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var state;
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SignIn',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.orange[800],
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Welcome Back!',
              style: TextStyle(color: Colors.teal, fontSize: 25),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 30,
                bottom: 30,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.black87,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.black38),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Colors.black87,
                ),
                title: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black38),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPassword(),
                  ),
                );
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.yellow[700],
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () => push(context, HomePage(user: state.user!)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal[600],
                ),
                height: 50,
                width: 200,
                padding: EdgeInsets.only(top: 12.5),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: Text(
                'Don\'t have an account? SignUp here',
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  push(BuildContext context, Widget destination) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => destination));
  }
}
