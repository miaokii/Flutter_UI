
import 'package:flutter_mall/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mall/components/custom_svg.dart';
import 'package:flutter_mall/components/default_button.dart';
import 'package:flutter_mall/components/form_error.dart';
import 'package:flutter_screenutil/screen_util.dart';

class ForgotForm extends StatefulWidget {
  @override
  ForgotFormState createState() => ForgotFormState();
}

class ForgotFormState extends State<ForgotForm> {
  final _globalKey = GlobalKey<FormState>();
  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _globalKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: 30),
            FormError(errors: errors),
            SizedBox(height: ScreenUtil().screenHeight*0.1,),
            DefaultButton(
              text: 'Continue',
              press: () {
                print(errors);
                if(_globalKey.currentState.validate()){
                  _globalKey.currentState.save();
                }
              },
            )
          ],
        ));
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
            validator: (value){
              if (value.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            onChanged: (value){
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter you email',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(color: KTextColor),
                suffixIcon: CustomSuffixIcon(
                  svgIcon: 'assets/icons/Mail.svg',
                )),
          );
  }
}
