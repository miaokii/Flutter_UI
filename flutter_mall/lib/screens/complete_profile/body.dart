import 'package:flutter/material.dart';
import 'package:flutter_mall/screens/complete_profile/complete_form.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';

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
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.r),
            Text(
              'Complete Profile',
              style: headingStyle,
            ),
            SizedBox(height: 10.r),
            Text(
              'Complete your details or continue\nwith social meida',
              textAlign: TextAlign.center,
              style: TextStyle(color: kSecondaryColor),
            ),
            SizedBox(height: 40.h),
            CompleteProfileForm(),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'By continuing your confirm that you agree\nwith out Team and Confition',
              style: TextStyle(fontSize: 13, color: KTextColor),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ));
  }
}
