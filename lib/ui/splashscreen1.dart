import 'package:flutter/material.dart';
import 'package:tempdeal/ui/login.dart';
import 'package:tempdeal/ui/login1.dart';
import 'package:tempdeal/ui/login1retailer.dart';
import 'package:tempdeal/ui/loginretailer.dart';
import 'package:tempdeal/ui/mystore1.dart';
import 'package:tempdeal/ui/signup1.dart';
class Splashscreen1 extends StatefulWidget {
  @override
  _Splashscreen1State createState() => _Splashscreen1State();
}
class _Splashscreen1State extends State<Splashscreen1> {
double _width;
double _height;
  @override
  Widget build(BuildContext context) {
  _width = MediaQuery.of(context).size.width;
     _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
children: <Widget>[
Image.asset("assets/images/splashscreen1.png",
fit: BoxFit.fitHeight,
height: _height
),
Positioned(
 top: _height/2.5,
left: 20,
child:Image.asset(
  'assets/images/first.png',
height: 90,
  fit: BoxFit.fitHeight,
),
),
Positioned(
 top: _height/1.85,
left: 20,
child:Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
        Text(
    'Get Exciting',
    style: TextStyle(
color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.w500
    ),
    ),
      Text(
    'Deals & Discount Now!',
    style: TextStyle(
color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.w500
    ),
    )   
  ],
)
),
Positioned(
  top: _height/1.3,
  child:   Container(
  decoration: new BoxDecoration(
  color: Colors.white,
borderRadius: BorderRadius.circular(20),
  ),
  height: _height/2.9,
  width: _width,
// child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: <Widget>[
// FlatButton(
//                       onPressed: () {    Navigator.pushReplacement(
//       context, MaterialPageRoute(builder: (BuildContext context) => Login1()));},
//                       child: Text(
//                         'Log In',
//                         style: TextStyle(
//                           color: Color(0xff7DBE2E),
//                           fontSize: font20.0,
//                         ),
//                       ),
//                     ),
//                     FlatButton(
//                       onPressed: () {
//                        Navigator.pushReplacement(
//       context, MaterialPageRoute(builder: (BuildContext context) => Signup1()));
//                       },
//                       child: Text(
//                         'Sign Up',
//                         style: TextStyle(
//                           color: Color(0xff7DBE2E),
//                           fontSize: font20.0,
//                         ),
//                       ),
//                     ),
// ],
// )
 
  ),
),
Positioned(
  left: 30,
 bottom: _height/12,
  child:   GestureDetector(
    onTap: (){
print("tapped");
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Login();
    }
    )
    );
    },
      child: Container(
      child: Column(
    children: <Widget>[
Image.asset("assets/images/getdeals.png"),
    ],
),
        decoration: new BoxDecoration(
            color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
        ),
   height: _height*0.2,
      width: _width/2.5,
        ),
  ),
),



Positioned(
 bottom: _height/12,
 left: _width/2,
  child:   GestureDetector(
    onTap: (){
print("tapped");
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Loginretailer();
    }
    )
    );
    },
      child: Container(
      child: Column(
    children: <Widget>[
Image.asset("assets/images/retailer.png"),
    ],
),
        decoration: new BoxDecoration(
            color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
        ),
   height: _height*0.2,
      width: _width/2.5,
        ),
  ),
),




],
      ),
    );
  }
}