import 'package:flutter/material.dart';

// The Loading Screen used in the project
class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Loader(),
    ));
  }
}

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      height: 250,
      child: CircularProgressIndicator(),
    );
  }
}
