import 'package:flutter/material.dart';

class ReadMore4 extends StatefulWidget {
  @override
  State<ReadMore4> createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore4> {
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
                'Kebijaksanaan di Atas Politik',
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
                  "Di sebuah negara yang sedang dilanda gejolak politik, hidup seorang pejabat yang tulus dan berintegritas bernama Bapak Irfan. Irfan adalah seorang menteri dalam pemerintahan yang sedang berjuang menghadapi krisis politik dan korupsi yang merajalela. Meskipun berada di tengah tekanan politik dan godaan korupsi, Irfan bertekad untuk menjalankan tugasnya dengan kejujuran dan kebijaksanaan. Selama bertahun-tahun, Irfan telah bekerja dengan tekun untuk membangun program-program sosial yang bermanfaat bagi rakyatnya. Dia tidak hanya berbicara tentang perubahan, tetapi dia juga bertindak. Ia bekerja dengan para pakar, mendengarkan masukan rakyat, dan selalu berusaha mencari solusi terbaik untuk masalah-masalah yang dihadapi negaranya. Namun, dalam dunia politik yang kacau balau, Irfan sering kali menemui rintangan. Dia mendapat tekanan dari sesama politisi yang lebih suka mengutamakan kepentingan pribadi daripada kepentingan rakyat. Mereka mencoba merayu, mengintimidasi, dan menghasut Irfan agar berpaling dari jalan integritasnya. Suatu hari, sebuah kesempatan muncul ketika Irfan diberikan tawaran besar untuk memperkaya diri dengan cara yang curang. Namun, Irfan mengambil keputusan yang berat untuk menolak tawaran itu. Dia tahu bahwa dengan menerima tawaran itu, dia akan kehilangan kebijaksanaan dan integritas yang telah memandu langkah-langkahnya selama ini. Keputusan Irfan untuk tetap setia pada prinsip-prinsipnya menjadi berita besar di seluruh negeri. Warga negara yang merasa kecewa dengan politikus korup diapresiasi oleh keberanian dan kejujuran Irfan. Gerakan untuk mendukungnya pun mulai bermunculan di seluruh negeri. Irfan menjadi simbol perlawanan terhadap korupsi dan politikus yang tidak jujur. Meskipun hidupnya diwarnai ancaman dan godaan, Irfan terus berjuang untuk kebaikan rakyatnya. Dia memahami bahwa kebijaksanaan dan integritasnya adalah senjata terkuatnya dalam dunia politik yang kacau balau. Dan akhirnya, melalui perjuangan dan ketulusan Irfan, negara itu pun mengalami perubahan yang positif. Cerita tentang Bapak Irfan mengajarkan kita bahwa di dunia politik yang penuh dengan godaan dan korupsi, masih ada tempat bagi kebijaksanaan dan integritas. Politik yang sesungguhnya yang dapat membawa perubahan positif adalah politik yang dijalankan dengan kejujuran, niat tulus, dan cinta pada rakyat. Keputusan untuk tetap setia pada prinsip-prinsip itu bisa menjadi pemicu perubahan besar yang membawa kebaikan bagi banyak orang."),
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
