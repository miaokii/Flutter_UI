import 'package:flutter/material.dart';
import 'package:flutter_mall/constants.dart';
import 'package:flutter_mall/route.dart';
import 'package:flutter_mall/screens/splash/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'route.dart';

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
              theme: ThemeData(
                  // 手脚架组件背景颜色
                  scaffoldBackgroundColor: Colors.white,
                  fontFamily: "Muli",
                  appBarTheme: AppBarTheme(
                      color: Colors.white,
                      elevation: 0,
                      brightness: Brightness.light,
                      iconTheme: IconThemeData(color: Colors.black87),
                      textTheme: TextTheme(
                          headline6: TextStyle(
                              color: Color(0xFF8B8B8B), fontSize: 18))),
                  textTheme: TextTheme(
                      bodyText1: TextStyle(color: KTextColor),
                      bodyText2: TextStyle(color: KTextColor)),
                  visualDensity: VisualDensity.adaptivePlatformDensity),
              initialRoute: SplashScreen.roteName,
              routes: routes,
            ));
  }
}
