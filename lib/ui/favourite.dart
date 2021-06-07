import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}
class _FavouriteState extends State<Favourite> {
 final FocusNode myFocusNode = FocusNode();
double _height,_width;
  List saved ;
  Future<String> loadAsset() async {
  var jsondata = await rootBundle.loadString('assets/data/alerts.json');
  print(jsondata);
 setState(() {
 saved = json.decode(jsondata);
 });
 return "Successful";
}
  @override
  void initState() {
   super.initState();
   this.loadAsset();
  }
Widget list(){
var list = ListView.builder(
  itemCount: saved == null ? 0 : saved.length,
  itemBuilder: (context,index){
return Card(
       shape : RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight:Radius.circular(0))), 
    elevation: 7,
child: Stack(
     children: <Widget>[
     Positioned(
       top: 15,
       left: _width/1.15,
       child: 
 Icon(Icons.favorite,color: Colors.red)
 ),
     Wrap(
      
   // crossAxisAlignment: CrossAxisAlignment.start,
   // mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
  Container(
    padding: EdgeInsets.all(15),
    width: 100,
    height: 100,
    child: CachedNetworkImage(
           imageUrl: saved[index]['link'],
             placeholder: (context, url) => new CircularProgressIndicator(),
                errorWidget: (context, url, error) => new Icon(Icons.error),
                  fadeOutDuration: new Duration(seconds: 1),
                    fadeInDuration: new Duration(seconds: 3),
                          fit: BoxFit.fitHeight,
                        ),
  ),
  Wrap(
direction: Axis.vertical,
  // crossAxisAlignment: CrossAxisAlignment.start,
  
    children: <Widget>[
    new  Row(
 
    children: [
      Container(
        width: _width/1.8,
  child: Padding(
    padding: const EdgeInsets.only(top:20),
    child: Expanded(
          child: Text(
        
        saved[index]['title'] == null ? '': saved[index]['title'],
        softWrap: true,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          )
          ),
    ),
  ),
      ),
    ],
      ),
    SizedBox(height: 10),
  Row(

    children: <Widget>[
      
    Container(
     // width: 80,
    //  height: 25,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
       color: Color(0xff7DBE2E),
      ),
      padding: EdgeInsets.fromLTRB(10,3,10,3),
      child:  Text('\$25',style: TextStyle(
        color: Colors.white,
        fontSize: font12
      ))
    ),
    SizedBox(width:5),
  Text('\$15',style: TextStyle(
    fontSize: font10,
    color: Colors.grey[400],
    decoration: TextDecoration.lineThrough,
    decorationStyle: TextDecorationStyle.solid,
    decorationColor: Colors.grey[700]
  )
  ),
    SizedBox(width:_width/MediaQuery.of(context).devicePixelRatio),
  Column(
    
    children: <Widget>[
      Row(
        children: <Widget>[
          Icon(Icons.star,size: 10,color:Color(0xff7DBE2E)),
        Icon(Icons.star,size: 12,color:Color(0xff7DBE2E)),
         Icon(Icons.star,size: 14,color:Color(0xff7DBE2E)),
        Icon(Icons.star,size: 16,color:Color(0xff7DBE2E)),
          Icon(Icons.star_border,size: 18,color:Color(0xff7DBE2E)), 
    
        ]
        ),
             Row(
        children: <Widget>[
        Text('4.1 Ratings',style: TextStyle(
             fontSize: 9,
             color: Colors.grey[400]
           )),
          Text(' | ',style: TextStyle(
             fontSize: 9,
              color: Colors.grey[400]
           )),
           Text('55 Reviews',style: TextStyle(
             fontSize: 9,
              color: Colors.grey[400]
           ))
        ]
        ),
           
    ],
  ), 
 
  
  ],
  ),

 
  ],
  
  ),
  
 
  ],
  ),
     ])
  );
}
);
return list;
}


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
      appBar: AppBar(
        elevation: 0,
backgroundColor: Colors.white,
leading: IconButton(
      onPressed: (){

        Navigator.pop(context);
      },
          icon: Icon(Icons.arrow_back,
      color:Color.fromRGBO(179, 210, 21, 1),
      ),
    ),
centerTitle: true,
title: Text("Favourites",
  style:TextStyle(
     color:Color.fromRGBO(179, 210, 21, 1)
     ),
  ),
bottom: PreferredSize(child: Padding(
  padding: const EdgeInsets.only(left:20,bottom: 10,right:20 ),
  child:   Row(
  mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
          Text("Your Favorites (8)",
           style:TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: font17,
       color:Colors.black,
       ),
          ),
    ],
  ),
), preferredSize: Size.fromHeight(30.0)),
actions: <Widget>[
IconButton(
  icon:Icon(Icons.more_vert,
    color: Color(0xff7DBE2E),),
  onPressed: (){},
  ),
],
      ),
body:list(),
    );
  }
}