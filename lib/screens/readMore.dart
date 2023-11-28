import 'package:flutter/material.dart';

class ReadMore extends StatefulWidget {
  @override
  State<ReadMore> createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore> {
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
                'Pagi yang Tak Terlupakan',
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
                  "Di suatu pagi yang cerah, di sebuah kafe yang tersembunyi di sudut kota, dua orang asing yang tak pernah bertemu sebelumnya sedang duduk di meja yang berdekatan. Mereka adalah Claire dan Ethan, yang tanpa mereka ketahui, hidup mereka akan saling terkait begitu erat setelah pertemuan ini. Claire adalah seorang penulis yang bersemangat, dengan matanya yang berkilat oleh keinginan untuk menciptakan cerita yang menggetarkan jiwa pembacanya. Sementara itu, Ethan adalah seorang seniman berbakat, yang melihat keindahan dalam segala hal di sekitarnya dan mencoba menggambarnya dalam karyanya. Pagi itu, saat pandangan mereka bersentuhan tanpa sengaja, ada sesuatu yang istimewa di udara. Mereka mulai berbicara, dan dalam waktu singkat, pembicaraan mereka berubah menjadi tawa yang hangat, dan candaan yang memikat hati satu sama lain. Mereka saling berbagi mimpi, kegagalan, dan rasa takut. Claire membacakan salah satu cerpen terbarunya kepada Ethan, dan Ethan menunjukkan padanya beberapa karyanya yang menawan. Saat matahari mulai tenggelam dan cahaya senja merambat di sekitar mereka, keduanya merasa seperti dunia di sekitar mereka hanyalah latar belakang yang tak berarti. Yang ada hanyalah mereka berdua, terperangkap dalam percakapan yang mendalam dan meresap dalam kehangatan satu sama lain.Ketika saatnya tiba untuk pulang, Claire memberikan Ethan buku kecil yang berisi cerpen-cerpen karyanya, dan Ethan memberikan Claire satu dari gambarnya yang paling berharga. Mereka berjanji untuk bertemu lagi di kafe yang sama di suatu pagi nanti.Pagi yang tak terlupakan itu menjadi awal dari kisah asmara mereka yang penuh makna. Keduanya menyadari bahwa cinta tidak selalu datang dalam bentuk yang paling terduga. Cinta bisa tumbuh dari pembicaraan yang dalam, ketertarikan pada keindahan yang sama, dan saling pengertian yang tulus. Claire dan Ethan tahu bahwa mereka telah menemukan sesuatu yang istimewa di antara satu sama lain, dan mereka tak sabar mengejar kisah asmara mereka yang baru.Demikianlah, pagi yang cerah di kafe yang tersembunyi menjadi awal dari kisah cinta yang indah, dan mereka berdua menyadari bahwa takdir memainkan peran penting dalam menghubungkan hati mereka dalam sebuah kisah asmara yang tak terlupakan."),
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
