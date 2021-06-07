import 'package:flutter/material.dart';
import 'package:tempdeal/ui/fontscreen.dart';
import 'package:tempdeal/ui/onboardingscreen.dart';
import 'package:tempdeal/ui/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //  title: 'Flutter Demo',
      theme: ThemeData(
     
     
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen()
    );
  }
}
