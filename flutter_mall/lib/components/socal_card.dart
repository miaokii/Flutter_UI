import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocalCard extends StatelessWidget {
  final String icon;
  final Function press;

  const SocalCard({Key key, @required this.icon, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 40.r,
        width: 40.r,
        padding: EdgeInsets.all(12.r),
        margin: EdgeInsets.symmetric(horizontal: 12.r),
        child: SvgPicture.asset(icon),
        decoration:
            BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
      ),
    );
  }
}
