import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;

  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: TextButton(
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18.r),
        ),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => kPrimaryColor),
            shape: MaterialStateProperty.resolveWith((states) =>
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)))),
      ),
    );
  }
}
