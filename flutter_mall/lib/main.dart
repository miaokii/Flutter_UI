import 'package:flutter/material.dart';
import 'package:flutter_mall/route.dart';
import 'package:flutter_mall/screens/splash/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'route.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        allowFontScaling: true,
        builder: () => MaterialApp(
              /// 不显示debug图标
              debugShowCheckedModeBanner: false,
              theme: theme(),
              initialRoute: SplashScreen.roteName,
              routes: routes,
            ));
  }
}
