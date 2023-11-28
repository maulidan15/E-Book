import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
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
        title: Text('Events'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'), // Tambahkan gambar latar belakang yang sesuai
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Events',
              style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            EventButton(title: 'Event 1', date: 'October 25, 2023'),
            EventButton(title: 'Event 2', date: 'November 5, 2023'),
            EventButton(title: 'Event 3', date: 'November 15, 2023'),
          ],
        ),
      ),
    );
  }
}

class EventButton extends StatelessWidget {
  final String title;
  final String date;

  EventButton({required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EventDetailPage(title: title, date: date)),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.teal[800],
        padding: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 16, color: Colors.yellow[700]),
          ),
        ],
      ),
    );
  }
}

class EventDetailPage extends StatelessWidget {
  final String title;
  final String date;

  EventDetailPage({required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Detail'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'), // Tambahkan gambar latar belakang yang sesuai
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Title: $title',
                style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                'Date: $date',
                style: TextStyle(fontSize: 20, color: Colors.yellow[700]),
              ),
              // Tambahkan informasi lainnya tentang detail acara di sini.
            ],
          ),
        ),
      ),
    );
  }
}
