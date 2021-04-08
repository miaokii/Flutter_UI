import 'package:flutter/material.dart';
import '../forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  
  static String roteName = '/forgot_password';

  const ForgotPasswordScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Body(),
    );
  }
}