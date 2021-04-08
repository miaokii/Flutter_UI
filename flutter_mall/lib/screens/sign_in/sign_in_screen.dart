import 'package:flutter/material.dart';
import 'package:flutter_mall/screens/sign_in/components/body.dart';

class SignInScreen extends StatefulWidget {
  static String roteName = "/sign_in";
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
