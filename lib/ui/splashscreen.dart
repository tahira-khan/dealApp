import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'onboardingscreen.dart';
class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}
class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;
  AnimationController animationController;
  Animation<double> animation;
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }
   void navigationPage() {
 Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => OnboardingScreen()));
   }
  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    animation =
    new CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => this.setState(() {}));
    animationController.forward();
    setState(() {
      _visible = !_visible;
    });
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Color(0xFF414f5a),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            ],),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'assets/images/Logo.png',
                width: animation.value * 500,
                height: animation.value * 500,
              ),
           Text("  POWERED BY",
           style: TextStyle(
             fontSize: 18,
             color:Colors.grey
           ),
           ),
           Image.asset('assets/images/Colors-Dijination-04.png',
          ),
        ],
      ),
        ]
    )
    
    );
  }
}