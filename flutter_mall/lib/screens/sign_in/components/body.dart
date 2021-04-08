import 'package:flutter/material.dart';
import 'package:flutter_mall/components/socal_card.dart';
import 'package:flutter_mall/screens/sign_in/components/sign_form.dart';
import '../../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.r,
            ),
            Text(
              'Register Account',
              style: headingStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Complete your details or continue \nwith social media',
              textAlign: TextAlign.center,
              style: TextStyle(color: kSecondaryColor),
            ),
            SizedBox(height: ScreenUtil().screenHeight * 0.07),
            SignForm(),
            SizedBox(
              height: 50.r,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalCard(
                  icon: 'assets/icons/google-icon.svg',
                ),
                SocalCard(
                  icon: 'assets/icons/facebook-2.svg',
                ),
                SocalCard(
                  icon: 'assets/icons/twitter.svg',
                )
              ],
            ),
            SizedBox(
              height: 20.r,
            ),
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
    );
  }
}
