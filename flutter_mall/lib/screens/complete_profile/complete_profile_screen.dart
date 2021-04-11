import 'package:flutter/material.dart';
import 'body.dart';

class CompleteProfile extends StatelessWidget {
  static String roteName = '/complete_profile_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}

