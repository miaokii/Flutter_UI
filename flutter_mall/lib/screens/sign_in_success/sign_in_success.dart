import 'package:flutter/material.dart';
import 'package:flutter_mall/components/default_button.dart';
import 'package:flutter_mall/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SignSuccessScreen extends StatelessWidget {
  static String roteName = '/sign_success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Success'),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Image(image: assetsImage('assets/images/Pattern Success.png')),
            Text(
              'Login Success',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100.h,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 60.w),
              child: DefaultButton(
                text: 'Back to home',
                press: () {},
              ),
            )
          ],
        ),
      )),
    );
  }
}
