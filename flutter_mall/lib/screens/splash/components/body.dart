import 'package:flutter/material.dart';
import 'package:flutter_mall/constants.dart';
import 'package:flutter_mall/screens/sign_in/sign_in_screen.dart';
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {"text": 'Welcome to Tokoto, Let\'s shop!', "image": "splash_1.png"},
    {
      "text":
          "We help people connect with store \naround United State of America",
      "image": "splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "splash_3.png"
    }
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                    onPageChanged: (page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (contenxt, index) => SplashContent(
                        text: splashData[index]['text'],
                        image: splashData[index]['image']))),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        splashData.length, (index) => buildDot(index)),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  DefaultButton(
                    text: 'Continue',
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.roteName);
                    },
                  ),
                  Spacer()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      width: index == _currentPage ? 20 : 6,
      height: 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: _currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
