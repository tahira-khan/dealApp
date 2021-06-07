import 'package:flutter/material.dart';
import 'package:tempdeal/ui/dashboard.dart';
import 'package:tempdeal/ui/login1.dart';
import 'package:tempdeal/ui/signup1.dart';
final Color darkBlue = Color.fromARGB(255, 18, 32, 47);




class Loginretailer extends StatefulWidget {
  @override
  _LoginretailerState createState() => _LoginretailerState();
}

class _LoginretailerState extends State<Loginretailer> {



double _width,_height;
double font8,font10,font12,font14,font15,font,font16,font17,font20,font50;



  @override
  Widget build(BuildContext context) {

    _width=MediaQuery.of(context).size.width;

_height=MediaQuery.of(context).size.height;

font8=_width*0.019;
font10=_width*0.0244;

font12=_width*0.029;
font14 = _width*0.034;
font15 = _width*0.037;
font16 = _width*0.039;
font17 = _width*0.041;
font20 = _width*0.046;
font50=_width*0.115;

    
    return Scaffold(
backgroundColor: Colors.white,
     body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 140.0),
        
       img('assets/images/Logo.png',250),
         Text('Discover the best deals\naround you', textAlign: TextAlign.center, style: TextStyle(
           fontSize: font20
         )),
  SizedBox(height: 100.0),
        

        Container(
          padding: EdgeInsets.only(left:20,right:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RaisedButton(
  onPressed: () { 
 Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Signup1();
    }
    )
    );
  },
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  padding: const EdgeInsets.all(0.0),
  child: Ink(
    decoration: const BoxDecoration(
     gradient:  LinearGradient(
	  colors: [
      Color(0xffA2C971),
        Color(0xff7DBE2E),
      
      ],
	  begin: FractionalOffset.centerLeft,
	  end: FractionalOffset.centerRight,
	),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    child: Container(
      constraints: const BoxConstraints(minWidth: 88.0, minHeight: 50.0), // min sizes for Material buttons
      alignment: Alignment.center,
      child: const Text(
        'Sign Up ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ),
),
               SizedBox(height: 10.0),
        
            FlatButton(
  onPressed: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Login1();
    }
    )
    );
   },
  shape: RoundedRectangleBorder(
    side: BorderSide(color:Color.fromRGBO(179, 210, 21, 1)),
    borderRadius: BorderRadius.circular(10.0)
    ),
  padding: const EdgeInsets.all(0.0),
  child: Ink(
    decoration: const BoxDecoration(
   color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0)),
    ),
    child: Container(
      constraints: const BoxConstraints(minWidth: 88.0, minHeight: 50.0), // min sizes for Material buttons
      alignment: Alignment.center,
      child: const Text(
        'Login ',
        style: TextStyle(
          color: Color(0xff7DBE2E),
          fontSize: 20
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ),
),
        ],
        ),
        ),
    
      ],
      ),
    );
  }
  Widget img(String pic, double width)
  {
  return Image.asset(pic,width: width);
  }
 

}