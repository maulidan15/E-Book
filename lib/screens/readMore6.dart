import 'package:flutter/material.dart';

class ReadMore6 extends StatefulWidget {
  @override
  State<ReadMore6> createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore6> {
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
                'Kekuatan dan Makna Uang',
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
                  "Uang, entitas yang seringkali kita anggap sepele, memiliki kekuatan yang tak terbantahkan dalam hidup kita. Namun, uang juga memiliki makna yang dalam yang melebihi sekadar bentuk fisiknya. Di sebuah kota kecil yang damai, hidup seorang pemuda bernama Rian. Ia adalah seorang pekerja keras yang menjalani kehidupan sederhana bersama keluarganya. Ia tumbuh dalam keluarga yang mengajarkan nilai-nilai seperti kerja keras, kejujuran, dan kepedulian terhadap sesama. Suatu hari, Rian mendapatkan kesempatan untuk mengambil pekerjaan dengan gaji yang sangat tinggi di sebuah perusahaan besar di kota besar. Kesempatan ini adalah impian bagi banyak orang, dan Rian tidak tahan untuk menolaknya. Ia pindah ke kota besar dan mulai hidup dalam kemewahan yang sebelumnya hanya bisa dia impikan. Sementara itu, di kota kecilnya, keluarganya terus berjuang untuk mencari nafkah. Rian merasa bersalah karena meninggalkan mereka, tetapi ia berpikir bahwa dengan uang yang lebih banyak, ia akan dapat memberi mereka kehidupan yang lebih baik. Ia bekerja keras, bekerja lembur, dan menghabiskan waktu berjam-jam di kantor untuk mengumpulkan uang. Namun, seiring berjalannya waktu, Rian merasa semakin terasing dari keluarganya dan dirinya sendiri. Ia menyadari bahwa uang telah mengubahnya. Ia telah kehilangan nilai-nilai yang diajarkan oleh keluarganya dan mengorbankan hubungan yang seharusnya lebih penting. Suatu hari, Rian menerima berita bahwa ayahnya jatuh sakit. Ia pulang ke kota kecilnya, dan saat melihat ayahnya yang lemah, ia menyadari betapa berharganya waktu yang telah terlewatkan dengan keluarganya. Uang yang ia kumpulkan selama ini tidak bisa menggantikan momen-momen bahagia yang telah terlewatkan. Rian memutuskan untuk kembali ke kota kecilnya dan menjalani hidup yang lebih sederhana. Ia menyadari bahwa uang, meskipun penting, bukan segalanya. Kehidupan memiliki makna yang lebih dalam daripada sekadar kekayaan materi. Ia mulai memprioritaskan hubungan dan nilai-nilai yang ia pelajari dari keluarganya. Cerita tentang Rian mengingatkan kita bahwa uang adalah alat yang penting dalam hidup kita, tetapi tidak boleh menjadi tujuan utama. Makna sejati dalam hidup dapat ditemukan dalam hubungan kita dengan orang-orang yang kita cintai dan dalam nilai-nilai yang kita anut. Uang seharusnya menjadi sarana untuk mencapai tujuan dan kebahagiaan yang lebih besar, bukan akhir dari segalanya."),
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
