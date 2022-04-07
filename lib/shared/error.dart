import 'package:flutter/material.dart';

// Used to show errors to the user
class ErrorMessage extends StatelessWidget {
  final String message;

  const ErrorMessage({Key? key, this.message = 'it broke'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
