import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back to login'),
          onPressed: () {},
          color: Colors.red,
        ),
      ),
    );
  }
}
