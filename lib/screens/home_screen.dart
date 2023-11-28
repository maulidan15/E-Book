import 'package:ebook_app/model/user.dart';
import 'package:ebook_app/screens/library_screen.dart';
import 'package:ebook_app/screens/premiumDescriptionPage.dart';
import 'package:ebook_app/screens/searchPage.dart';
import 'package:ebook_app/screens/storyDescriptionPage.dart';
import 'package:ebook_app/screens/storyDescriptionPage2.dart';
import 'package:ebook_app/screens/storyDescriptionPage3.dart';
import 'package:ebook_app/screens/storyDescriptionPage4.dart';
import 'package:ebook_app/screens/storyDescriptionPage5.dart';
import 'package:ebook_app/screens/storyDescriptionPage6.dart';
import 'package:flutter/material.dart';
import 'package:ebook_app/drawer_items/notifications_page.dart';
import 'package:ebook_app/my_drawer.dart';
import 'package:ebook_app/my_drawer_header.dart';
import 'package:ebook_app/model/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required User user});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late User user;

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
          // IconButton(
          //   icon: Icon(Icons.notifications),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => NotificationsPage(),
          //       ),
          //     );
          //   },
          // ),
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
          'GuBuk',
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
      body: Container(
        color: Colors.black87,
        width: 600,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'TRENDING BOOKS',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 20,
                  fontFamily: 'Raleway',
                ),
              ),
              Divider(
                color: Colors.white70,
                thickness: 0.1,
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'New Books',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontStyle: FontStyle.italic,
                  color: Colors.orange[800],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(left: 25, top: 15, bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/1.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Pagi yang Tak Terlupakan',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'by ChatGPT',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Signature',
                                color: Colors.yellow[800],
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage2(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/2.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Lingkaran Kehidupan',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'by ChatGPT',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Signature',
                                color: Colors.yellow[800],
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage3(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/3.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Dunia yang Penuh Iman',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'by ChatGPT',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Signature',
                                fontWeight: FontWeight.w600,
                                color: Colors.yellow[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    /*GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/4.jpg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Like a Sparrow \n through the Heart',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'by Aggy Bird',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Signature',
                                fontWeight: FontWeight.w600,
                                color: Colors.yellow[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15, right: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Center(
                          child: Text(
                            'See \n more ...',
                            style: TextStyle(
                              color: Colors.yellow[700],
                              fontSize: 18,
                              fontFamily: 'Raleway',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),*/
                  ],
                ),
              ),
              Divider(
                color: Colors.white70,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Trending Books',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontStyle: FontStyle.italic,
                  color: Colors.orange[800],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage4(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(left: 25, top: 15, bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/4.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Kebijaksanaan di Atas Politik',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'by ChatGPT',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Signature',
                                fontWeight: FontWeight.w600,
                                color: Colors.yellow[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage5(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/5.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Dua Dunia yang Terhubung',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'by ChatGPT',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Signature',
                                fontWeight: FontWeight.w600,
                                color: Colors.yellow[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage6(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/6.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Kekuatan dan Makna Uang',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'by ChatGPT',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Signature',
                                fontWeight: FontWeight.w600,
                                color: Colors.yellow[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    /*GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage6(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/8.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'The Gita for Children',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'by Roopa Pai',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Signature',
                                fontWeight: FontWeight.w600,
                                color: Colors.yellow[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15, right: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Center(
                          child: Text(
                            'See \n more ...',
                            style: TextStyle(
                              color: Colors.yellow[700],
                              fontSize: 18,
                              fontFamily: 'Raleway',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),*/
                  ],
                ),
              ),
              Divider(
                color: Colors.white70,
              ),
              SizedBox(
                height: 15,
              ),
              // Text(
              //   'Categories',
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontFamily: 'Raleway',
              //     fontStyle: FontStyle.italic,
              //     color: Colors.orange[800],
              //   ),
              // ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => Library(),
                    //       ),
                    //     );
                    //   },
                    //   child: Container(
                    //     height: 100,
                    //     width: 200,
                    //     margin: EdgeInsets.only(bottom: 15, top: 15, left: 25),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       color: Colors.grey[800],
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         'Adventure',
                    //         style: TextStyle(
                    //           fontFamily: 'Amsterdam',
                    //           color: Colors.yellow[700],
                    //           fontSize: 12,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => Library(),
                    //       ),
                    //     );
                    //   },
                    //   child: Container(
                    //     height: 100,
                    //     width: 200,
                    //     margin: EdgeInsets.only(bottom: 15, top: 15),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       color: Colors.grey[800],
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         'Romance',
                    //         style: TextStyle(
                    //           fontFamily: 'Amsterdam',
                    //           color: Colors.yellow[700],
                    //           fontSize: 12,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => Library(),
                    //       ),
                    //     );
                    //   },
                    //   child: Container(
                    //     height: 100,
                    //     width: 200,
                    //     margin: EdgeInsets.only(bottom: 15, top: 15),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       color: Colors.grey[800],
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         'Educational',
                    //         style: TextStyle(
                    //           fontFamily: 'Amsterdam',
                    //           color: Colors.yellow[700],
                    //           fontSize: 12,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => Library(),
                    //       ),
                    //     );
                    //   },
                    //   child: Container(
                    //     height: 100,
                    //     width: 200,
                    //     margin: EdgeInsets.only(bottom: 15, top: 15),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       color: Colors.grey[800],
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         'Fiction',
                    //         style: TextStyle(
                    //           fontFamily: 'Amsterdam',
                    //           color: Colors.yellow[700],
                    //           fontSize: 12,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => SearchPage(),
                    //       ),
                    //     );
                    //   },
                    //   child: Container(
                    //     height: 100,
                    //     width: 200,
                    //     margin: EdgeInsets.only(bottom: 15, top: 15, right: 25),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       color: Colors.grey[800],
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         'See \n more ...',
                    //         style: TextStyle(
                    //           color: Colors.yellow[700],
                    //           fontSize: 18,
                    //           fontFamily: 'Raleway',
                    //         ),
                    //         textAlign: TextAlign.center,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
