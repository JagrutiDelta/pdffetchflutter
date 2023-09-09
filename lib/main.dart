import 'package:flutter/material.dart';
import 'pdf_viewer_screen.dart'; // Import your PDF viewer screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(), // Replace with your home screen
    );
  }
}

class HomeScreen extends StatelessWidget {
  final pdfUrl = "https://drive.google.com/file/d/1k5tlpt7ETIYZrXxGAlRaNiXf84FfglAi/view?usp=sharing"; // Replace with your PDF URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PDFViewerScreen(pdfUrl: pdfUrl),
              ),
            );
          },
          child: Text('Open PDF'),
        ),
      ),
    );
  }
}
