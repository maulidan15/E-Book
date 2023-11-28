import 'package:flutter/material.dart';

class ReadMore5 extends StatefulWidget {
  @override
  State<ReadMore5> createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore5> {
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
                'Dua Dunia yang Terhubung',
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
                  "Di sebuah masa depan yang penuh dengan teknologi canggih, kehidupan sehari-hari manusia sangat bergantung pada perangkat pintar dan konektivitas yang tak terbatas. Di kota besar yang penuh dengan bangunan futuristik, hidup seorang wanita muda bernama Maya, yang bekerja sebagai insinyur teknologi. Maya adalah salah satu pemimpin dalam pengembangan teknologi terbaru yang menghubungkan dunia fisik dengan dunia maya. Di dalam dunia maya ini, orang bisa berinteraksi dengan lingkungan fisik mereka melalui perangkat khusus yang disebut 'RealConnect'. Ini memberikan peluang tak terbatas untuk berkreasi, belajar, dan berkomunikasi dengan cara yang lebih mendalam dan immersive. Namun, semakin canggih teknologi menjadi, semakin terasa hambatan antara dunia fisik dan dunia maya. Orang-orang mulai terlalu tenggelam dalam kehidupan maya mereka, kehilangan sentuhan manusiawi dalam interaksi mereka di dunia nyata. Ini menyebabkan masalah sosial, isolasi, dan kesenjangan di masyarakat. Maya merasa ada yang salah dengan arah teknologi. Dia merasa tanggung jawab untuk mencari keseimbangan antara dunia nyata dan maya. Dia memutuskan untuk memulai proyek untuk mengintegrasikan kembali teknologi dengan kehidupan sehari-hari manusia, bukan menggantikannya. Maya bekerja dengan tekun untuk menciptakan solusi yang memungkinkan orang tetap terhubung dengan dunia maya, sambil tidak kehilangan kontak dengan realitas. Hasil karyanya adalah 'VirtualCompanion,' sebuah teknologi yang dirancang untuk membantu orang menggabungkan kehidupan maya dengan dunia fisik dengan lebih seimbang. Proyek Maya menjadi sukses, dan semakin banyak orang yang mulai mengggunakan VirtualCompanion untuk memperkaya kehidupan mereka. Teknologi itu memungkinkan orang untuk menjalani pengalaman yang mendalam dan bermakna dalam dunia maya, sambil tetap menjaga keseimbangan dengan kehidupan fisik mereka. Melalui cerita Maya, kita diajarkan bahwa teknologi adalah alat yang kuat yang bisa membantu kita mencapai potensi besar, tetapi juga penting untuk tidak kehilangan kontak dengan dunia nyata. Dengan kebijaksanaan dan etika dalam penggunaan teknologi, kita dapat menciptakan hubungan yang harmonis antara dunia maya dan dunia fisik, sehingga teknologi dapat menjadi sarana yang memperkaya kehidupan kita."),
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
