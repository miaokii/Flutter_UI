import 'package:flutter/material.dart';
import 'package:flutter_mall/components/custom_svg.dart';
import 'package:flutter_mall/components/default_button.dart';
import 'package:flutter_mall/components/form_error.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  
  String email;
  String password;
  
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  bool _remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: 30.r),
            buildPasswordFormField(),
            SizedBox(height: 30.r),
            Row(
              children: [
                Checkbox(value: _remember,
                activeColor: kPrimaryColor,
                 onChanged: (value) {
                  setState(() {
                    _remember = value; 
                  });
                }),
                Text('Remember me'),
                Spacer(),
                Text('Forgot Password', style: TextStyle(decoration: TextDecoration.underline),)
              ],
            ),
            SizedBox(height: 20.r),
            FormError(errors: errors),
            SizedBox(height: 20.r,),
            DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                }
              },
            )
          ],
        ));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) => password = value,
      obscureText: true,
      onChanged: (text) {
        if (text.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (text.length >=8 &&
            errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return null;
      },
      validator: (text) {
        if (text.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (text.length < 8 &&
            !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter you password',
          labelStyle: TextStyle(color: KTextColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: 'assets/icons/Lock.svg',
          )),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) => email = value,
      onChanged: (text) {
        if (text.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(text) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (text) {
        if (text.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(text) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Enter you email',
          labelStyle: TextStyle(color: KTextColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: 'assets/icons/Mail.svg',
          )),
    );
  }
}
