import 'package:ebook_app/ui/auth/launcherScreen/launcher_screen.dart';
import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LauncherScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/images/omah.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'GuBuk',
                style: TextStyle(
                  color: Colors.orange[800],
                  fontSize: 35,
                  fontFamily: 'Raleway',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
