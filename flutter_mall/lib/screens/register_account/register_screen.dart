import 'package:flutter/material.dart';
import 'package:flutter_mall/screens/register_account/components/body.dart';

class RegisterScreen extends StatelessWidget {
  static String roteName = '/register_screen';
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