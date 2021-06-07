import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}
class _Profile2State extends State<Profile2> {
  Widget check(Widget widget){
return Container();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        leading: IconButton(
      onPressed: (){
      },
          icon: Icon(Icons.arrow_back,
      color:Colors.white,
      ),
    ),
        actions: <Widget>[
         Padding(
           padding:  EdgeInsets.all(14.0),
           child: Text("EDIT",
           style: TextStyle(fontSize: 20),
           ),
         )
        ],
        elevation: 0,
        	gradient: new LinearGradient(
	  colors: [
    Color(0xffA2C971),
    ],
	  begin: FractionalOffset.centerLeft,
	)
       // title: Text('Good'),
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
        Color(0xff7DBE2E),
      ],
	  end: FractionalOffset.centerRight,
	)
  ),
      child:Stack(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(top:100),
    child:card(),
    ),
    Container(
   alignment: Alignment.topCenter,
       margin: EdgeInsets.only(top:50),
     child: roundImage()),
  ],)),
        Container(height:100),     
    ],
 ),
      ]
    ),
    );
  }
  Widget activityCard(String text1, Widget widget)
  {
    return   Column(children: [           
               Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [    
         Text('$text1',  style:TextStyle(
         color: Colors.black,
         fontSize: 18,
         fontWeight: FontWeight.bold
         )
         ),
      widget,
      ],
      ), 
      SizedBox(height: 10),
              Divider(thickness: 1,height: 0),
            ],) ;  
  }
  Widget card()
  {
    return Card(
         shape : RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight:Radius.circular(25))),   
elevation: 0,
      margin: EdgeInsets.only(left:1.4,right:1.4),
    child: Container(
      margin: EdgeInsets.only(left:15,right: 15),
      child: Column(
       mainAxisSize: MainAxisSize.max,
	crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
 SizedBox(height:70),
        activityCard('First Name',Text('James')),
        SizedBox(height: 20),
        activityCard('Last Name',Text('Woods')),
             SizedBox(height: 20),
        activityCard('Email',Text('jwoods@gmail.com')),     
        SizedBox(height: 20),
        activityCard('Password',Text('***********')),    
         SizedBox(height: 20),
        activityCard('Mobile Number',Text('(038164-89999)')),
	      SizedBox(height: 20),
        activityCard('Privacy Policy',Icon(Icons.arrow_forward_ios,size: 12),
        ),
        ],
      ),
    ),
  );
  }
  Widget roundImage()
  {
    return  Stack(
        children: <Widget>[
           CircleAvatar(
          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
            radius: 45,
          ),
             Positioned(
              top:45,
              left: 50, 
               child:
    CircleAvatar(
              radius: 15,
backgroundColor: Colors.white,
               child: IconButton(
                 icon: Icon(Icons.edit,
                 size: 15,
                 color: Colors.amberAccent,
                 ), onPressed: (){})
                 ),
             ), 
        ],
    );
  }
  Widget textfields(String hinttext)
  {
    return TextField(
      style: TextStyle(
      fontSize: 14,
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
}
