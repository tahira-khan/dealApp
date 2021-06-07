import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:tempdeal/ui/dashboard.dart';
class Bookmarks extends StatefulWidget {
  @override
  _BookmarksState createState() => _BookmarksState();
}
class _BookmarksState extends State<Bookmarks> {
 final FocusNode myFocusNode = FocusNode();
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
  double font8,font10,font12,font14,font15,font,font16,font17,font20,font50;


Widget list(){
var list = ListView.builder(
  itemCount: saved == null ? 0 : saved.length,
  itemBuilder: (context,index){
return Card(
    elevation: 15,
child: Row(
 // crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
Container(
  padding: EdgeInsets.all(15),
  width: 140,
  height: 140,
  child: CachedNetworkImage(
         imageUrl: saved[index]['link'],
           placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.error),
                fadeOutDuration: new Duration(seconds: 1),
                  fadeInDuration: new Duration(seconds: 3),
                        fit: BoxFit.fitHeight,
  width: _width/3.5,
  height: _height/6.5,
                      ),
),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
  SizedBox(
    width:250,
        child: Text(saved[index]['title'] == null ? '': saved[index]['title'],
          style: TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: font17
          ),
          ),
   ),
  SizedBox(height: 25),
Row(children: <Widget>[
  Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
     color: Color(0xff7DBE2E),
    ),
    padding: EdgeInsets.fromLTRB(15,5,15,5),
    child:  Text('Rs.1234',style: TextStyle(
      color: Colors.white
    ))
  ),
  SizedBox(width:10),
Text('Rs.2000',style: TextStyle(
  fontSize: font10,
  color: Colors.grey[400],
  decoration: TextDecoration.lineThrough,
  decorationStyle: TextDecorationStyle.solid,
  decorationColor: Colors.grey[700],
)),
]
),
SizedBox(height: 12),
Row(
  children: <Widget>[
    Icon(Icons.star,size: 10,color:Color(0xff7DBE2E)),
  Icon(Icons.star,size: 12,color:Color(0xff7DBE2E)),
   Icon(Icons.star,size: 14,color:Color(0xff7DBE2E)),
  Icon(Icons.star,size: 16,color:Color(0xff7DBE2E)),
    Icon(Icons.star,size: 18,color:Color(0xff7DBE2E)), 
    SizedBox(width: _width/12),
     Text('4.4 Ratings',style: TextStyle(
       fontSize: 9,
       color: Colors.grey[400]
     )),
    Text(' | ',style: TextStyle(
       fontSize: 9,
        color: Colors.grey[400]
     )),
     Text('23 Reviews',style: TextStyle(
       fontSize: 9,
        color: Colors.grey[400]
     ))
  ]
  ),
] 
),
]
)
);
}
);
return list;
}
double _width, _height;
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

             Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => Dashboard()),
   );
      },
          icon: Icon(Icons.arrow_back,
      color:Color.fromRGBO(179, 210, 21, 1),
      ),
    ),
centerTitle: true,
title: Text("Bookmarks",
  style:TextStyle(
     color:Color.fromRGBO(179, 210, 21, 1)
     ),
  ),
bottom: PreferredSize(child: Padding(
  padding: const EdgeInsets.only(bottom: 10,right:20 ),
  child:   Row(
  mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
         
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