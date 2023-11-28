import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/omah.png'),
              ),
            ),
          ),
          Text(
            'GuBuk',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.orange[800],
              fontFamily: 'Raleway',
            ),
          )
        ],
      ),
    );
  }
}
