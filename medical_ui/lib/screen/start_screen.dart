import 'package:flutter/material.dart';
import 'package:medical_ui/constant.dart';
import 'package:medical_ui/widgets/header_logo.dart';
import 'package:medical_ui/widgets/my_header.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            MyHeader(
                height: 535,
                imageUrl: 'assets/images/doctor.png',
                child: HeaderLogo()),
            Expanded(
                child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [mBackgroundColor, mSecondBackgroundColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Column(
                children: [
                  Text(
                    'Booking Apps',
                    style: TextStyle(fontSize: 38, color: mTitleTextColor),
                  ),
                  SizedBox(height: 35),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetuer\n'
                    'adipiscing elit, sed diam nonummy nibh euismod',
                    style: TextStyle(fontSize: 12, color: mTitleTextColor),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(36),
                    child: FlatButton(
                      color: mButtonColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      onPressed: () {},
                      child: Text(
                        'Book Now',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                  ),
                  Spacer()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
