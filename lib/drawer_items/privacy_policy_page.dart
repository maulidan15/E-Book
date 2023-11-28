import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatefulWidget {
  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
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
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.yellow[700],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'This is the privacy policy text. You can replace it with your own privacy policy content. You may want to include information about data collection, usage, and protection.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Information We Collect',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow[700],
                ),
              ),
              Text(
                'We collect information you provide directly to us. For example, when you create an account or contact us for support, we may collect your name, email address, and other information you choose to provide.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'How We Use Your Information',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow[700],
                ),
              ),
              Text(
                'We may use the information we collect for various purposes, including to provide and maintain the service, to notify you about changes to our service, and to respond to your requests.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              // Add more privacy policy content as needed
            ],
          ),
        ),
      ),
    );
  }
}
