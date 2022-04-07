import 'package:flutter/material.dart';

// The about page for the project
class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('about'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(60.0),
          child: Text(
            'An app i built for practising, basically everything in flutter',
          ),
        ),
      ),
    );
  }
}
