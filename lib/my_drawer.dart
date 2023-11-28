import 'package:ebook_app/drawer_items/create_story.dart';
import 'package:ebook_app/drawer_items/feedback_page.dart';
import 'package:ebook_app/drawer_items/notifications_page.dart';
import 'package:ebook_app/drawer_items/privacy_policy_page.dart';
import 'package:ebook_app/drawer_items/settings_page.dart';
import 'package:flutter/material.dart';

class MyDrawerList extends StatefulWidget {
  @override
  State<MyDrawerList> createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          // ListTile(
          //   leading: Icon(
          //     Icons.assignment,
          //     size: 20,
          //     color: const Color.fromARGB(115, 255, 255, 255),
          //   ),
          //   title: Text(
          //     'Create Book',
          //     style: TextStyle(
          //       color: const Color.fromARGB(115, 255, 255, 255),
          //       fontSize: 16,
          //     ),
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => CreateStory(),
          //       ),
          //     );
          //   },
          // ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.settings_outlined,
              size: 20,
              color: const Color.fromARGB(115, 255, 255, 255),
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: const Color.fromARGB(115, 255, 255, 255),
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
          // ListTile(
          //   leading: Icon(
          //     Icons.notifications_outlined,
          //     size: 20,
          //     color: const Color.fromARGB(115, 255, 255, 255),
          //   ),
          //   title: Text(
          //     'Notifications',
          //     style: TextStyle(
          //       color: const Color.fromARGB(115, 255, 255, 255),
          //       fontSize: 16,
          //     ),
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => NotificationsPage(),
          //       ),
          //     );
          //   },
          // ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.privacy_tip_outlined,
              size: 20,
              color: const Color.fromARGB(115, 255, 255, 255),
            ),
            title: Text(
              'Privacy policy',
              style: TextStyle(
                color: const Color.fromARGB(115, 255, 255, 255),
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrivacyPolicyPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.feedback_outlined,
              size: 20,
              color: const Color.fromARGB(115, 255, 255, 255),
            ),
            title: Text(
              'Send feedback',
              style: TextStyle(
                color: const Color.fromARGB(115, 255, 255, 255),
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FeedbackPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

//
