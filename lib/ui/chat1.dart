import 'package:flutter/material.dart';
class Chat1 extends StatefulWidget {
  @override
  _Chat1State createState() => _Chat1State();
}
class _Chat1State extends State<Chat1> {
double _height,_width;
 
 double font8,font10,font12,font14,font15,font,font16,font17,font20,font50;


 
  @override


  Widget build(BuildContext context) {
   _width = MediaQuery.of(context).size.width;
     _height = MediaQuery.of(context).size.height;
     
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
body: ListView(
children: <Widget>[
  Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   CircleAvatar(
      radius: 20,
      child: ClipOval(
          child: Image.network(
            'https://modelsfashionpk.com/mfp-images/mfp_profile/Ahmed-Ali-Akbar-Actor-Model-TV-Host-Singer-388.jpg',
          ),
      ),
  ),
),
Padding(
  padding: const EdgeInsets.only(top:10),
  child:   new Container(
  
           
  
           // width: 80,
  
 
  
            child: new Container(
  
              decoration: new BoxDecoration(
  
                color: Colors.grey[300],
  
                borderRadius: new BorderRadius.only(
  
                  topLeft: const Radius.circular(10.0),
  
                  topRight: const Radius.circular(10.0),
  
                  bottomRight: const Radius.circular(10.0),
  
                )
  
              ),
  
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("Any Discounts Available on eggs"),
              )
  
           ),
  
          ),
),


]

,),

Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
Padding(
  padding: const EdgeInsets.only(top:0),
  child:   new Container(
  
           
  
           // width: 80,
  
 
  
            child: new Container(
  
              decoration: new BoxDecoration(
  
                color: Colors.grey[300],
  
                borderRadius: new BorderRadius.only(
  
                  topLeft: const Radius.circular(10.0),
  
                  topRight: const Radius.circular(10.0),
  
                 // bottomRight: const Radius.circular(10.0),
  bottomLeft:  const Radius.circular(10.0),
                )
  
              ),
  
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("Yeah !"),
              )
  
           ),
  
          ),
),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   CircleAvatar(
      radius: 20,
      child: ClipOval(
          child: Image.network(
            'https://modelsfashionpk.com/mfp-images/mfp_profile/Ahmed-Ali-Akbar-Actor-Model-TV-Host-Singer-388.jpg',
          ),
      ),
  ),
),


],
),




],
),



appBar: AppBar(
  backgroundColor:Colors.white,
leading: IconButton(icon: Icon(Icons.arrow_back,
 color: Color(0xff7DBE2E)
), onPressed: (){

Navigator.pop(context);

}),
centerTitle: true,
title: Column(
  children: <Widget>[
Icon(Icons.group_work,
color: Colors.black,
),
Text("MT Supermarket",
style: TextStyle(
   color: Colors.black,
),
)
  ],
),
actions: <Widget>[
IconButton(icon: Icon(Icons.more_vert,
 color: Color(0xff7DBE2E),
), onPressed: (){}),
],
),
bottomNavigationBar: BottomAppBar(
child:Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(
  
   // height: 80,
  
    child:   Row(
  
    
  
        
  
    
  
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
        
  
    
  
          children: <Widget>[
  
    
  
        
  
    
  
    RawMaterialButton(
  
    
  
        
  
    
  
          onPressed: () {},
  
    
  
        
  
    
  
          elevation: 2.0,
  
    
  
        
  
    
  
          fillColor:  Color(0xffA2C971),
  
    
  
        
  
    
  
          child: Icon(
  
    
  
        
  
    
  
    Icons.mic,
  
    
  
        
  
    
  
    color: Colors.white,
  
    
  
        
  
    
  
    size: _width*0.05,
  
    
  
        
  
    
  
          ),
  
    
  
        
  
    
  
          padding: EdgeInsets.all(0.0),
  
    
  
        
  
    
  
          shape: CircleBorder(),
  
    
  
        
  
    
  
        ),
  
    
  
        
  
    
  
        Container(              
  
    
  
        
  
    
  
          width: _width/2,
  
    
  
        
  
    
  
      height: 40.0,
  
    
  
        
  
    
  
          decoration: new BoxDecoration(
  
    
  
        
  
    
  
             color: Colors.grey[200],
  
    
  
        
  
    
  
         borderRadius: BorderRadius.all(Radius.circular(40)),
  
    
  
        
  
    
  
        border: Border.all(
  
    
  
        
  
    
  
         color: Colors.grey[200],
  
    
  
        
  
    
  
        ),
  
    
  
        
  
    
  
          ),
  
    
  
        
  
    
  
          child: TextField(     
  
    
  
        
  
    
  
    decoration: InputDecoration(
  
    
  
        
  
    
  
      border: InputBorder.none,
  
    
  
        
  
    
  
         filled: true,
  
    
  
        
  
    
  
         hintText: "Type message",
  
    
  
        
  
    
  
      hintStyle: TextStyle(
  
    
  
        
  
    
  
                                 fontSize: font17, color: Colors.grey),
  
    
  
        
  
    
  
    ),
  
    
  
        
  
    
  
    style: TextStyle(
  
    
  
        
  
    
  
      fontSize: font17,
  
    
  
        
  
    
  
      height: 1.0,
  
    
  
        
  
    
  
      color: Colors.black                  
  
    
  
        
  
    
  
    )
  
    
  
        
  
    
  
          )
  
    
  
        
  
    
  
        ),
  
    
  
        
  
    
  
        RawMaterialButton(
  
    
  
        
  
    
  
          onPressed: () {},
  
    
  
        
  
    
  
          elevation: 2.0,
  
    
  
        
  
    
  
          fillColor: Color(0xffA2C971),
  
    
  
        
  
    
  
          child: Icon(
  
    
  
        
  
    
  
    Icons.arrow_forward,
  
    
  
        
  
    
  
    color: Colors.white,
  
    
  
        
  
    
  
  size: _width*0.05,
  
    
  
        
  
    
  
          ),
  
    
  
        
  
    
  
          padding: EdgeInsets.all(0.0),
  
    
  
        
  
    
  
          shape: CircleBorder(),
  
    
  
        
  
    
  
        ),
  
    
  
        
  
    
  
          ],
  
    
  
        
  
    
  
        ),
  
  ),
) 
),
    );
  }
}