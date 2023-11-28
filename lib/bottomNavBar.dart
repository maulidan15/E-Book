import 'package:ebook_app/model/user.dart';
import 'package:flutter/material.dart';
import 'screens/library_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/home_screen.dart';

class FirstScreen extends StatefulWidget {
  final User user;

  const FirstScreen({Key? key, required this.user}) : super(key: key);
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _currentIndex = 0;

  void _navTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _buildScreen(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 27,
        backgroundColor: Colors.teal[700],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white60,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.collections_bookmark_rounded),
          //   label: 'Library',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: _navTap,
      ),
    );
  }

  Widget _buildScreen(int index) {
    // Sesuaikan tampilan berdasarkan indeks yang dipilih
    switch (index) {
      case 0:
        return HomePage(user: widget.user);

      case 1:
        return Profile(user: widget.user);
      default:
        return HomePage(user: widget.user);
    }
  }
}
