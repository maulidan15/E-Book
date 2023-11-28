import 'package:flutter/material.dart';
import 'package:ebook_app/screens/readMore.dart';
import '../drawer_items/feedback_page.dart';

class DescriptivePage extends StatefulWidget {
  @override
  State<DescriptivePage> createState() => _DescriptivePageState();
}

class _DescriptivePageState extends State<DescriptivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Description',
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        titleTextStyle: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.w600,
          fontSize: 23,
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
        toolbarHeight: 65,
        iconTheme: IconThemeData(
          color: Colors.white60,
          size: 27,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black87,
            width: double.infinity,
            height: 300,
            child: Image.asset('assets/images/1.jpg'),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Text(
                    'Pagi yang Tak Terlupakan',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 25,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'by ChatGPT',
                    style: TextStyle(
                      color: Colors.yellow[700],
                      fontSize: 35,
                      fontFamily: 'Signature',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Ratings',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FeedbackPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Give Feedback',
                              style: TextStyle(
                                color: Colors.deepOrange[300],
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 120),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.yellow[600],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
                          'Di suatu pagi yang cerah, di sebuah kafe yang tersembunyi di sudut kota, dua orang asing yang tak pernah bertemu sebelumnya sedang duduk di meja yang berdekatan. Mereka adalah Claire dan Ethan, yang tanpa mereka ketahui, hidup mereka akan saling terkait begitu erat setelah pertemuan ini.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReadMore(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white60,
                                blurRadius: 3.0,
                                spreadRadius: 0.0,
                                offset: Offset(1.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.teal[500],
                          ),
                          child: Center(
                            child: Text(
                              'Baca Buku',
                              style: TextStyle(
                                  color: Colors.white60, fontFamily: 'Raleway'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
