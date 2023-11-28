import 'package:flutter/material.dart';

class CreateStory extends StatefulWidget {
  @override
  State<CreateStory> createState() => _CreateStoryState();
}

class _CreateStoryState extends State<CreateStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        toolbarHeight: 65,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Create Book'),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tambahkan elemen-elemen untuk membuat cerita di sini
            Text(
              'Create Your Book',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            // Contoh: Input teks untuk judul cerita
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Book Title',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Contoh: Input teks untuk isi cerita
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Book Content',
                  hintStyle: TextStyle(color: Colors.white),
                ),
                maxLines: 5, // Banyak baris teks yang ditampilkan
              ),
            ),
            SizedBox(height: 20),
            // Contoh: Tombol "Buat" untuk membuat cerita
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk membuat cerita di sini
              },
              child: Text('Create', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
