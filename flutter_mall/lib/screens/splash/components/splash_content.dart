import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';

class SplashContent extends StatelessWidget {

  final text, image;

  const SplashContent({
    Key key, this.text, this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
              fontSize: 36.r,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(text, textAlign: TextAlign.center,),
        Spacer(flex: 2,),
        Image(image: assetsImage(image),
          height: 265.h,
          width: 235.w,)
      ],
    );
  }
}