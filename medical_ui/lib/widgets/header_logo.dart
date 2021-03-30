import 'package:flutter/material.dart';
import 'package:medical_ui/constant.dart';


class HeaderLogo extends StatelessWidget {
  const HeaderLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/logo.png'),
            width: 36,
            height: 36,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            'Medical',
            style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: mTitleTextColor),
          )
        ],
      ),
    );
  }
}
