import 'package:flutter/material.dart';

class ReadMore3 extends StatefulWidget {
  @override
  State<ReadMore3> createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore3> {
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
                'Dunia yang Penuh Iman',
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
                  "Di sebuah desa kecil yang terletak di lereng bukit, hidup seorang wanita tua bernama Ibu Maria. Ibu Maria adalah seorang yang sangat taat beragama dan selalu menjalani kehidupannya sesuai dengan ajaran agamanya. Dia adalah sosok yang bijaksana, penuh kasih, dan selalu siap membantu sesama. Ibu Maria adalah tokoh yang dihormati oleh seluruh desa. Dia tidak hanya menjalani ajaran agamanya dengan penuh dedikasi, tetapi juga mengajarkan nilai-nilai kebaikan dan toleransi kepada anak-anak muda di desa. Dia sering membantu warga yang membutuhkan, tidak peduli agama atau latar belakang mereka. Suatu hari, seorang pria muda bernama Ali yang berasal dari kelompok agama yang berbeda pindah ke desa tersebut. Ali awalnya merasa asing di desa yang mayoritas penduduknya memeluk agama yang berbeda. Namun, Ibu Maria merasa bahwa ini adalah peluang untuk menjalin persahabatan dan toleransi. Ibu Maria mendekati Ali dengan penuh kebaikan dan mengundangnya ke rumahnya. Mereka berbicara tentang agama masing-masing, berbagi cerita hidup, dan berdiskusi tentang nilai-nilai yang mereka miliki. Ali merasa sangat terkesan oleh keramahan dan kedamaian Ibu Maria, dan mereka mulai menjalin persahabatan yang erat. Saat Ali berbicara dengan warga desa lainnya, dia mulai merasa bahwa agama bukanlah penghalang untuk saling menghormati dan bersatu. Ibu Maria juga mendapatkan banyak teman baru melalui Ali dan kelompoknya. Mereka belajar satu sama lain tentang agama, budaya, dan tradisi mereka. Dalam beberapa tahun, desa itu menjadi tempat yang damai dan harmonis, di mana warga dari berbagai agama hidup bersama dengan saling menghormati. Semua ini berkat Ibu Maria yang mendedikasikan hidupnya untuk mempromosikan kedamaian, toleransi, dan cinta dalam nama agama. Kisah Ibu Maria dan Ali mengajarkan kita bahwa agama seharusnya menjadi sarana untuk mempererat hubungan antarmanusia, bukan untuk memecah belah. Mereka membuktikan bahwa dengan saling pengertian, keramahan, dan kebaikan hati, kita dapat hidup bersama dalam kedamaian meskipun kita memiliki kepercayaan agama yang berbeda. Kita dapat menemukan keindahan dalam keragaman dan menjadikannya sebagai kekuatan yang mempersatukan kita semua."),
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
