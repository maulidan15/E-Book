import 'package:ebook_app/model/user.dart';
import 'package:ebook_app/services/helper.dart';
import 'package:flutter/material.dart';
import 'package:ebook_app/screens/storyDescriptionPage.dart';
import 'library_screen.dart';
import 'package:ebook_app/screens/searchPage.dart';
import 'package:ebook_app/drawer_items/notifications_page.dart';
import 'package:ebook_app/my_drawer.dart';
import 'package:ebook_app/my_drawer_header.dart';

class Profile extends StatefulWidget {
  final User user; // Tambahkan parameter user

  const Profile({Key? key, required this.user})
      : super(key: key); // Tambahkan constructor

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal[700],
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationsPage(),
                ),
              );
            },
          ),
          SizedBox(
            width: 3,
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white60,
          size: 27,
        ),
        toolbarHeight: 65,
        title: Text(
          'Your Profile',
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        titleTextStyle: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.w600,
          fontSize: 23,
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(221, 255, 255, 255),
            height: 250,
            width: 900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  child: displayCircleImage(
                      widget.user.profilePictureURL, 150, true),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  widget.user.firstName, // Menggunakan nama dari objek User
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.orange[700],
                    fontSize: 20,
                  ),
                ),
                Text(
                  '',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.orange[700],
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [],
                        ),
                        VerticalDivider(
                          width: 40,
                          color: Colors.black38,
                        ),
                        Column(
                          children: [],
                        ),
                        VerticalDivider(
                          width: 30,
                          color: Colors.black38,
                        ),
                        Column(
                          children: [],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                    child: Column(
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.teal[600],
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'I am a person who is positive about every aspect of life. There are many things I like to do, to see, and to experience. I like to read, I like to write; I like to think, I like to dream; I like to talk, I like to listen.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
