import 'package:flutter/material.dart';
import 'package:flutter_mall/components/custom_svg.dart';
import 'package:flutter_mall/components/default_button.dart';
import 'package:flutter_mall/components/form_error.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  List<String> errors = [];
  String firstName;

  void _addError(String error) {
    setState(() {
      errors.add(error);
    });
  }

  void _removeError(String error) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(height: 30.h),
          buildLastNameFormField(),
          SizedBox(height: 30.h),
          buildPhoneFormField(),
          SizedBox(height: 30.h),
          buildAddressFormField(),
          SizedBox(height: 20.h),
          FormError(errors: errors),
          SizedBox(height: 20.h),
          DefaultButton(
            text: 'Continue',
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

  TextFormField buildAddressFormField() {
    return TextFormField(
      validator: (value) {
          if (value.isEmpty && !errors.contains(kAddressNullError) {
            _addError(kAddressNullError);
          }
          return null;
        },
        onSaved: (value) => firstName = value,
        onChanged: (value) {
          if (value.isNotEmpty) {
            _removeError(kAddressNullError);
          }
        },
        decoration: InputDecoration(
            labelText: 'Address',
            hintText: 'Enter your phone address',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(color: KTextColor),
            suffixIcon: CustomSuffixIcon(
              svgIcon: 'assets/icons/Location point.svg',
            )));
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
        validator: (value) {
          if (value.isEmpty && !errors.contains(kPhoneNumberNullError)) {
            _addError(kPhoneNumberNullError);
          }
          return null;
        },
        onSaved: (value) => firstName = value,
        onChanged: (value) {
          if (value.isNotEmpty) {
            _removeError(kPhoneNumberNullError);
          }
        },
        decoration: InputDecoration(
            labelText: 'Phone Number',
            hintText: 'Enter your phone number',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(color: KTextColor),
            suffixIcon: CustomSuffixIcon(
              svgIcon: 'assets/icons/Phone.svg',
            )));
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: 'Last Name',
            hintText: 'Enter your last name',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(color: KTextColor),
            suffixIcon: CustomSuffixIcon(
              svgIcon: 'assets/icons/User.svg',
            )));
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
        validator: (value) {
          if (value.isEmpty && !errors.contains(kNamelNullError)) {
            _addError(kNamelNullError);
          }
          return null;
        },
        onSaved: (value) => firstName = value,
        onChanged: (value) {
          if (value.isNotEmpty) {
            _removeError(kNamelNullError);
          }
        },
        decoration: InputDecoration(
            labelText: 'First Name',
            hintText: 'Enter your first name',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(color: KTextColor),
            suffixIcon: CustomSuffixIcon(
              svgIcon: 'assets/icons/User.svg',
            )));
  }
}
