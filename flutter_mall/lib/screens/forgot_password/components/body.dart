import 'package:flutter/material.dart';
import 'package:flutter_mall/components/custom_svg.dart';
import 'package:flutter_mall/components/default_button.dart';
import 'package:flutter_mall/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    ));
  }
}

class ForgotForm extends StatefulWidget {
  @override
  ForgotFormState createState() => ForgotFormState();
}

class ForgotFormState extends State<ForgotForm> {
  final _globalKey = GlobalKey<FormState>();
  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _globalKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter you email',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSuffixIcon(
                    svgIcon: 'assets/icons/Mail.svg',
                  )),
            ),
            SizedBox(height: ScreenUtil().screenHeight * 0.14),
            DefaultButton(
              text: 'Continue',
              press: () {},
            )
          ],
        ));
  }
}
