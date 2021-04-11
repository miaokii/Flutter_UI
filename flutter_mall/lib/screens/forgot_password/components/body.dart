import 'package:flutter/material.dart';
import 'package:flutter_mall/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/forgot_passwprd.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.r),
      child: SingleChildScrollView(
              child: Column(
          children: [
            SizedBox(height: 20.r),
            Text(
              'Forgot Password',
              style: headingStyle,
            ),
            SizedBox(height: 20.r),
            Text(
              'please enter your email and we will send\nyou a link to return to your account',
              textAlign: TextAlign.center,
              style: TextStyle(color: kSecondaryColor),
            ),
            SizedBox(height: ScreenUtil().screenHeight * 0.1),
            ForgotForm(),
            SizedBox(height: ScreenUtil().screenHeight * 0.1),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(fontSize: 16.r),
              ),
              SizedBox(
                width: 5,
              ),
              Text('Sign up',
                  style: TextStyle(fontSize: 16.r, color: kPrimaryColor))
            ])
          ],
        ),
      ),
    ));
  }
}
