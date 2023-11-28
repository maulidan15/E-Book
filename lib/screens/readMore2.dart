import 'package:flutter/material.dart';

class ReadMore2 extends StatefulWidget {
  @override
  State<ReadMore2> createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore2> {
  bool isReadMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Lingkaran Kehidupan',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.orange[300],
                    fontFamily: 'Raleway'),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              buildText(
                  "Di sebuah desa kecil yang terletak di tengah perbukitan, hidup seorang tua yang bijaksana bernama Kakek Kusuma. Kakek Kusuma dikenal di seluruh desa sebagai sosok yang penuh kebijaksanaan, dan banyak warga datang untuk mencari nasehatnya. Suatu hari, seorang pemuda muda bernama Adi mendatangi Kakek Kusuma untuk meminta nasehat tentang hidup. Adi berkata, Kakek Kusuma, saya bingung tentang arti hidup. Apa sebenarnya tujuan dari semua ini? Kakek Kusuma tersenyum bijaksana dan menjawab, Hidup itu seperti lingkaran, Adi. Semua yang kita lakukan, baik atau buruk, akan kembali kepada kita suatu hari nanti. Kehidupan adalah proses belajar dan tumbuh, di mana kita harus mencari makna dan tujuan dalam setiap langkah kita. Adi kemudian berkata, Tapi Kakek, kadang-kadang hidup terasa begitu sulit. Saya merasa terjebak dalam rutinitas dan masalah sehari-hari. Kakek Kusuma mengangguk dan berkata, Hidup memang akan menguji kita, Adi. Tapi jangan pernah lupa bahwa kita memiliki kekuatan dalam diri kita untuk mengubah arah hidup kita. Ketika Anda merasa terjebak, coba luangkan waktu untuk merenung, menemukan kebahagiaan dalam hal-hal kecil, dan berbagi kebaikan dengan orang lain. Adi merenung sejenak, lalu berkata, Apa yang harus saya lakukan, Kakek? Kakek Kusuma menjawab, Mulailah dengan menghargai setiap momen dalam hidup Anda. Nikmati matahari terbit yang indah, hujan yang menyegarkan, dan senyum dari orang-orang yang Anda temui. Jangan terlalu fokus pada tujuan akhir, tetapi nikmati perjalanan. Adi merasa terinspirasi oleh nasehat Kakek Kusuma. Dia perlahan mulai mengubah perspektifnya tentang hidup. Dia menjadi lebih sadar akan momen-momen kecil, menghargai hubungannya dengan orang lain, dan mengikuti nasehat bijak sang kakek. Bertahun-tahun kemudian, ketika Adi sudah menjadi seorang pria yang bijaksana, dia kembali ke desa kecil tersebut. Kali ini, dia duduk di bawah pohon tua bersama seorang anak muda dan berkata, Hidup itu seperti lingkaran, anak muda. Kita harus belajar, tumbuh, dan berbagi kebaikan dengan dunia. Cerita tentang Kakek Kusuma dan Adi mengingatkan kita bahwa kehidupan adalah perjalanan yang penuh makna, dan bahwa kita memiliki kekuatan untuk mengisi setiap hari dengan cinta, kedamaian, dan kebijaksanaan. Setiap momen adalah bagian dari lingkaran kehidupan yang tak terputus, dan kita dapat memilih untuk membuatnya berarti."),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isReadMore = !isReadMore;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.teal[400],
                  ),
                  height: 50,
                  width: 200,
                  child: Center(
                    child: Text(
                      (isReadMore ? 'Read Less' : 'Continue Reading'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildText(String text) {
    final lines = isReadMore ? null : 10;
    return Text(
      text,
      style: TextStyle(
          fontSize: 20, color: const Color.fromARGB(115, 255, 255, 255)),
      maxLines: lines,
      overflow: isReadMore ? TextOverflow.visible : TextOverflow.ellipsis,
      textAlign: TextAlign.center,
    );
  }
}
