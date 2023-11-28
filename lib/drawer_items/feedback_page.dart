import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  TextEditingController feedbackController = TextEditingController();

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
      ),
      body: Container(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Send Feedback',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.yellow[700],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'We value your feedback! Please use the form below to send us your thoughts, suggestions, or any issues you may have encountered.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Your Feedback',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow[700],
                ),
              ),
              TextFormField(
                controller: feedbackController,
                maxLines: 5,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter your feedback here',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Send feedback to the server or perform other actions here
                  String feedback = feedbackController.text;
                  // You can handle the feedback submission here
                },
                child: Text('Submit Feedback'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
