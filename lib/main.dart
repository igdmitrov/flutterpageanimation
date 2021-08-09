import 'package:flutter/material.dart';
import 'package:flutterpageanimation/no_animation.dart';
import 'package:flutterpageanimation/page_2.dart';

import 'page_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      debugShowMaterialGrid: false,
      home: Page1(),
      routes: {
        Page1.routeName: (ctx) => Page1(),
        Page2.routeName: (ctx) => Page2(),
      },
    );
  }

  ThemeData appTheme() {
    final builder = NoAnimationPageTransitionBuilder();
    return ThemeData(
      primarySwatch: Colors.indigo,
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: builder,
          TargetPlatform.fuchsia: builder,
          TargetPlatform.iOS: builder,
          TargetPlatform.linux: builder,
          TargetPlatform.macOS: builder,
          TargetPlatform.windows: builder,
        },
      ),
    );
  }
}
