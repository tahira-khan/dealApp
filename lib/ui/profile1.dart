import 'package:tempdeal/ui/profile2.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:tempdeal/ui/alert.dart';
import 'package:tempdeal/ui/bookmarks.dart';
import 'package:tempdeal/ui/login.dart';
import 'package:tempdeal/ui/shoppinglist.dart';
class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}
class _Profile1State extends State<Profile1> {

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
      appBar: GradientAppBar(
elevation: 0,
        leading: IconButton(
      onPressed: (){

        Navigator.pop(context);
      },
          icon: Icon(Icons.arrow_back,
      color:Colors.white,
      ),
    ),
actions: <Widget>[
  IconButton(icon:Icon(Icons.edit) , onPressed: (){

                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Profile2()),
  );
       

  }),
  IconButton(icon:Icon(Icons.more_vert) , onPressed: ()=>print("tapped"))
],
gradient: new LinearGradient(
	  colors: [
     Color(0xffA2C971),
       Color(0xff7DBE2E)
      ],
	  begin: FractionalOffset.centerLeft,
	  end: FractionalOffset.centerRight,
	),
      ),
      body: ListView(
      children: [
  Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
 decoration: new BoxDecoration(
	gradient: new LinearGradient(
	  colors: [
     Color(0xffA2C971),
       Color(0xff7DBE2E)
      ],
	  begin: FractionalOffset.centerLeft,
	  end: FractionalOffset.centerRight,
	)
  ),
      child:Stack(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(top:100),
      height: 200,
    child:card(),
    ),
    Container(
   alignment: Alignment.topCenter,
       margin: EdgeInsets.only(top:60),
     child: roundImage()),
  ],)),
      Container(height: 45,
                 width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top:10,left:10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labeltext('Your Location',12, Colors.grey[400]),
        labeltext('Dallas (DAL)',12, Colors.black),
      ],
      )),
      Card(
    elevation: 5,margin: EdgeInsets.all(0),
      shape : RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight:Radius.circular(0))), 
            child:  Container(
              padding: EdgeInsets.only(top:5,left:10,right:10),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [      
                 SizedBox(height:4),
                Text('My Activities', textAlign: TextAlign.left, style:TextStyle(
                fontSize: 15,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1,
                )),
                 SizedBox(height:14),
                GestureDetector(
                  onTap: (){

                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Alerts()),
  );
                  },
                  child: activityCard('Alert (0)')
                  
                  ),


                SizedBox(height:4),
                GestureDetector(
                  onTap: (){
                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Bookmarks()),
  );
                  },
                  child: activityCard('Bookmarks (0)')),
                SizedBox(height:4),
                
                GestureDetector(
                  
                  onTap: (){

 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Shoppinglist()),
  );

                  },
                  child: activityCard('My Wishlist (0)')),

                SizedBox(height:4),
                activityCard('Reviews (0)'),
                SizedBox(height:4),
                activityCard('Deal History (0)'),
                SizedBox(height:4),
                activityCard('Friend & Family (0)'),
                SizedBox(height:15),
              ],)  
                ),
      ),
      Container(height:18),
       Card(
        margin: EdgeInsets.all(0),
      shape : RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight:Radius.circular(0))), 
    elevation: 5,
            child:  Container(
              padding: EdgeInsets.only(top:5,left:10,right:10),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [      
                SizedBox(height:4),
                Text('About Us', textAlign: TextAlign.left, style:TextStyle(
                fontSize: 15,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1,
                )),
                 SizedBox(height:14),
                activityCard('Rate our App'),
                SizedBox(height:4),
                activityCard('Provide us Feedback'),
                SizedBox(height:4),
                activityCard('Terms & Condition'),
                SizedBox(height:4),
                activityCard('Disclaimer'),
                SizedBox(height:18),
              ],)  
                ),
      ),
    Container(height:30),
      Container(
        padding: EdgeInsets.only(left:20,right:20),
      child: 
      btn('Log out',Color.fromRGBO(179, 210, 21, 1),20,Color.fromRGBO(154, 230, 44, 1),Colors.white,Colors.white),
      ),
        Container(height:70),     
    ],
 ),
      ]
    ));
  }
  Widget activityCard(String text)
  {
    return   Column(children: [           
               Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [    
         Text('$text',style:TextStyle(
         color: Colors.grey[500],
         )),
         Icon(Icons.navigate_next,color: Colors.grey) ,
      ],
      ), 
              Divider(thickness: 1,height: 0),
            ],) ;  
  }
  Widget card()
  {
    return Card(
       //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
         shape : RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight:Radius.circular(25))),   
elevation: 4,
      margin: EdgeInsets.only(left:1.4,right:1.4),
    child: Column(
     mainAxisSize: MainAxisSize.max,
	crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
 SizedBox(height:40),
        Text('James Woods',textAlign: TextAlign.center),
      SizedBox(height:120),
        Text('Memeber since: 8 May 2020',textAlign: TextAlign.center , style: TextStyle(
          color: Colors.grey[400],
fontSize: font20,
        )),
  SizedBox(height:2),
      ],
    ),
  );
  }
  Widget roundImage()
  {
    return  CircleAvatar(
        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
          radius: 35,
        );
  }
  Widget textfields(String hinttext)
  {
    return TextField(
      style: TextStyle(
      fontSize: font14,
      ),
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.navigate_next),
      hintText: '$hinttext',
       // labelText: '',
        contentPadding: EdgeInsets.fromLTRB(0,10,10,0),
      ),
    );
  }
 Widget labeltext(String txt, double fontsize, Color color)
  {
    return Text('$txt', textAlign: TextAlign.left, style:TextStyle(
    fontSize: fontsize,
      color: color,
    ) );
  }
  Widget btn(String txt, Color txtcolor, double fontsize, Color bordercolor, Color gradient1, Color gradient2)
  {
  return Container(
    height: 40,
  decoration: new BoxDecoration(
   shape: BoxShape.rectangle,
          border: Border.all(width: 1.0, color: bordercolor),
    borderRadius: BorderRadius.circular(12),
  ),
  child: FlatButton( 
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(10.0),
    ),
    padding: EdgeInsets.only(left:10,right:10,top:0,bottom:0),
	child: Text('$txt',style: TextStyle(
    color: txtcolor,
      fontSize: fontsize,
    )),
	onPressed: () {

 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  );


  } 
  )
    );
  }
}