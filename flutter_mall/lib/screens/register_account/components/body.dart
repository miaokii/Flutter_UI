import 'package:flutter/material.dart';
import 'package:flutter_mall/components/default_button.dart';
import 'package:flutter_mall/components/form_error.dart';
import 'package:flutter_mall/components/socal_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        // color: Colors.red,
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
              SizedBox(
                height: 60.h,
              ),
              RegisterForm(),
              SizedBox(
                height: 40.h,
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
                height: 20.h,
              ),
              Text(
                'By continuing your confirm that you agress\nwith our Team and Condition',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  List<String> _errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: 30.h,
          ),
          buildPasswordFormField(),
          SizedBox(
            height: 30.h,
          ),
          buildConfirmPasswordFormField(),
          SizedBox(
            height: 20.h,
          ),
          FormError(errors: _errors),
          SizedBox(
            height: 20.h,
          ),
          DefaultButton(
            text: 'Confirm',
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (passwordController.text != value &&
            !_errors.contains(kMatchPassError)) {
          setState(() {
            _errors.add(kMatchPassError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (passwordController.text == value &&
            _errors.contains(kMatchPassError)) {
          setState(() {
            _errors.remove(kMatchPassError);
          });
        }
      },
      decoration: InputDecoration(
          labelText: 'Confirm Password',
          hintText: 'Re-enter your password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(color: KTextColor)),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      validator: (value) {
        if (value.isEmpty && !_errors.contains(kPassNullError)) {
          setState(() {
            _errors.add(kPassNullError);
          });
        } else if (value.length < 4 && !_errors.contains(kShortPassError)) {
          setState(() {
            _errors.add(kShortPassError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && _errors.contains(kPassNullError)) {
          setState(() {
            _errors.remove(kPassNullError);
          });
        } else if (value.length >= 4 && _errors.contains(kShortPassError)) {
          setState(() {
            _errors.remove(kShortPassError);
          });
        }
      },
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(color: KTextColor)),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty && !_errors.contains(kEmailNullError)) {
          setState(() {
            _errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !_errors.contains(kInvalidEmailError)) {
          setState(() {
            _errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && _errors.contains(kEmailNullError)) {
          setState(() {
            _errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            _errors.contains(kInvalidEmailError)) {
          setState(() {
            _errors.remove(kInvalidEmailError);
          });
        }
      },
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(color: KTextColor)),
    );
  }
}
