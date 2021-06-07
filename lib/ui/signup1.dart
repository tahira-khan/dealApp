import 'package:flutter/material.dart';
import 'package:tempdeal/ui/login1.dart';
import 'package:tempdeal/ui/mystore1.dart';
final Color darkBlue = Color.fromARGB(255, 18, 32, 47);
class Signup1 extends StatefulWidget {
  @override
  _Signup1State createState() => _Signup1State();
}
class _Signup1State extends State<Signup1> {
   Widget labeltext(String txt, double fontsize, Color txtcolor)
  {
    return Text('$txt',   style:TextStyle(
    fontSize: fontsize,
      color: txtcolor,
     // decoration: TextDecoration.underline,
    )          
     );
  }
  
 Widget linktext(String txt, double fontsize, Color color)
  {
    return Text('$txt',style:TextStyle(
    fontSize: fontsize,
    color: color,
    ));
  }
 Widget btn(String txt, Color txtcolor, double fontsize, Color bordercolor, Color gradient1, Color gradient2)
  {
  return Container(
  decoration: new BoxDecoration(
   shape: BoxShape.rectangle,
          border: Border.all(width: 2.0, color: bordercolor),
    borderRadius: BorderRadius.circular(14),
	gradient: new LinearGradient(
	  colors: [
      
  
   Color(0xffA2C971),
        Color(0xff7DBE2E),
    ],
	  begin: FractionalOffset.centerLeft,
	  end: FractionalOffset.centerRight,
	),
  ),
  child: FlatButton( 
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(14.0),
    ),
    padding: EdgeInsets.all(10),
	child: Text('$txt',style: TextStyle(
    color: txtcolor,
      fontSize: fontsize,
    )),
	onPressed: () {} 
  )
    );
  }


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
      body: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      SizedBox(height: 65.0),
   Image.asset("assets/images/Logo.png"),
      SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.only(left:20,right:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              emailBox('Full name',22),
                SizedBox(height: 10.0),
              emailBox('Email',22),
                SizedBox(height: 10.0),
              passwordBox('Password',22),
              SizedBox(height: 10.0),
                    
        RaisedButton(
  onPressed: () {                Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => Mystore1()),
   );  },
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
      child:  Text(
        'Sign up',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ),
),
 
            SizedBox(height: 25.0),
                    
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
          Row(
            children: <Widget>[
              Container(
color: Colors.grey[300],
height: 3,
width: 100,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Text(" or ",
                style: TextStyle(
                  color: Colors.grey,
fontSize: font17,
                ),
                ),
              ),
              Container(
color: Colors.grey[300],
height: 3,
width: 100,
              )
            ],
          ),        
          ]
             ),   
              SizedBox(height: 25.0),             
              iconbtn('Sign Up with Facebook',"assets/images/fblogo.jpg",Color.fromRGBO(60, 90, 154, 1.0),Colors.white,Colors.white),
              SizedBox(height: 20.0),
                    
           iconbtn('Sign Up with Google',"assets/images/googlelogo.png", Colors.white,Colors.grey,Colors.grey),
          ],
          ),
          ),
          SizedBox(height: 10.0),
                    
          Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              labeltext('By siging up you accept the ',15,Colors.grey),
               labeltext('Terms of Service ',15,Color.fromRGBO(179, 210, 21, 1)),
              labeltext('and',15,Colors.grey),
            ],
          ),
          labeltext('Privacy Policy',15,Color.fromRGBO(179, 210, 21, 1)
          ),
          SizedBox(height: 30.0),
                    
          GestureDetector(
            onTap: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Login1();
    }
    )
    );
            },
                      child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              labeltext('Already have an account?',15,Colors.grey),
              linktext('Log in',15,Color.fromRGBO(179, 210, 21, 1)),
            ],
            ),
          ),
                    SizedBox(height: 20.0),
                      
        ],
        ),
      ),
    );
  }
  Widget iconbtn(String btnText,String image,  Color backgroundcolor, Color txtcolor, Color iconcolor)
  {
    return RaisedButton(
                                elevation: 0.1,
                                 onPressed: (){ },
                               child:Row(
                                 children: <Widget>[
                                   Padding(
                                  padding: const EdgeInsets.only(left: 5,right:50),
                                  child: Image.asset('$image',
                                //  height: 30,
                                  width:30,
                                fit: BoxFit.fitWidth,
                                  ),
                                ),
                                   Text('$btnText',style: TextStyle(
                                   fontSize: font16,
                                     color: txtcolor,
                                     letterSpacing: 1.0,
                                   ),),
                                 ],
                               ),
                             color: backgroundcolor,
                               padding:const EdgeInsets.only(top:14,bottom:14),
      shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(14.0),
  side: BorderSide(color: Colors.grey[300])
),
                              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    );
  }
 Widget emailBox(String txt, double width)
  {
    return TextField(
     style: TextStyle(
     color: Colors.white,
     ),
   decoration: InputDecoration(
     filled: true,
     fillColor: Colors.green[50],
   hintText: '$txt' ,
     hintStyle: TextStyle(
       letterSpacing: 2,
     color:Color.fromRGBO(179, 210, 21, 1),
     ),
  contentPadding: EdgeInsets.fromLTRB(10,10,10,10),
   // focusedBorder: InputBorder.none,
    // enabledBorder: InputBorder.none,
    enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.green[50]),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.green[50]),
        ),
   )
    );
  }
 Widget passwordBox(String txt, double width)
  {
    return TextField(
      obscureText: true,
     style: TextStyle(
     color: Colors.white,
     ),
   decoration: InputDecoration(
     filled: true,
     fillColor: Colors.green[50],
   hintText: '$txt' ,
     hintStyle: TextStyle(
       letterSpacing: 2,
     color:Color.fromRGBO(179, 210, 21, 1),
     ),
  contentPadding: EdgeInsets.fromLTRB(10,10,10,10),
     suffixIcon: Icon(Icons.lock, color:Color.fromRGBO(179, 210, 21, 1) ),
    enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.green[50]),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.green[50]),
        ),
   )
    );
  }}