import 'package:flutter/material.dart';
import 'package:medical_ui/constant.dart';
import 'package:medical_ui/widgets/header_logo.dart';
import 'package:medical_ui/widgets/my_header.dart';

import 'reverse_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyHeader(
              height: 333,
              imageUrl: 'assets/images/welcome.png',
              child: Column(
                children: [
                  HeaderLogo(),
                  Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: mTitleTextColor),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Lorem ipsum dolor sit amet\nconsectrture adipiscing elit',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 36,
                  ),
                  SizedBox(height: 40),
                ],
              )),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [mBackgroundColor, mSecondBackgroundColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Out Health\nServices',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: mTitleTextColor,
                        ),
                      ),
                      Icon(
                        Icons.menu,
                        color: mSecondBackgroundColor,
                        size: 36,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuCart(
                      imageUrl: 'assets/images/general_practice.png',
                      title: 'General Practice',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ReversePage();
                        }));
                      },
                    ),
                    MenuCart(
                      imageUrl: 'assets/images/specialist.png',
                      title: 'Specialist',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuCart(
                      imageUrl: 'assets/images/sexual_health.png',
                      title: 'Sexual Health',
                    ),
                    MenuCart(
                      imageUrl: 'assets/images/immunisation.png',
                      title: 'Immunisation',
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class MenuCart extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Function onPressed;

  const MenuCart({Key key, this.imageUrl, this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Image(
            image: AssetImage(imageUrl),
            width: 135,
            height: 135,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 15, color: mTitleTextColor),
          )
        ],
      ),
    );
  }
}
