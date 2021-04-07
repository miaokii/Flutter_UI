import 'package:flutter/material.dart';
import 'package:flutter_mall/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_mall/screens/splash/splash_screen.dart';

//  root routes
final Map<String, WidgetBuilder> routes = {
  SplashScreen.roteName: (context) => SplashScreen(),
  SignInScreen.roteName: (context) => SignInScreen(),
}; 