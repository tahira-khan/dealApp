import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:tempdeal/ui/alerts1.dart';
import 'package:tempdeal/ui/mystore.dart';
import 'package:tempdeal/ui/mystore1.dart';
class Shoppinglist extends StatefulWidget {
  @override
  _ShoppinglistState createState() => _ShoppinglistState();
}
class _ShoppinglistState extends State<Shoppinglist> {
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
Widget row()
{
  return Row(
            children: <Widget>[ 
           GestureDetector(child: Expanded(  child: Container(height:140,child:  cards('W','Weekly items'))),
           onTap: (){                Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => Alerts1()),
   ); },
           ),
          Expanded(child: Container(height:140,child:  cards('F','Family'))),
              Expanded(child: Container(height:140,child:  cards('L','Later'))),    
            ],
          );
}


    Widget cards(String character,String title)
    {
      return  
  Card(
    child: Container(
      padding: EdgeInsets.fromLTRB(20,15,20,5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
Flexible(child: Text('$character',style: TextStyle(
  fontSize: 60,
  color: Colors.grey[400]
))),
Flexible(child:Text('$title' , textAlign: TextAlign.center, style: TextStyle(
  fontSize: font12,
   color: Colors.grey[400]
)))

]))
      );
    }
Widget list(){
var list = ListView.builder(
  shrinkWrap: true,
  physics: ScrollPhysics(),
  itemCount: saved == null ? 0 : saved.length,
  itemBuilder: (context,index){
return Card(
    elevation: 15,
child: Wrap(
 // crossAxisAlignment: CrossAxisAlignment.start,
  //mainAxisAlignment: MainAxisAlignment.start,
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
  //width: _width/3.5,
 // height: _height/6.5,
                      ),
),
Wrap(
  direction: Axis.vertical,
  children: <Widget>[

   Wrap(
     
     children: <Widget>[
       Padding(
         padding: const EdgeInsets.only(top:15),
         child: Container(
             width: _width/MediaQuery.of(context).devicePixelRatio*1.75,
             child: Text(saved[index]['title'] == null ? '': saved[index]['title'],
             
               style: TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: font16
               ),
               ),
              
           ),
       ),
  IconButton(
  icon:Icon(Icons.more_vert,
    color: Color(0xff7DBE2E),),
  onPressed: (){},
  ),
     ],
   ),


  SizedBox(height: 10),
  
Row(children: <Widget>[
  Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
     color: Color(0xff7DBE2E),
    ),
    padding: EdgeInsets.fromLTRB(10,4,10,4),
    child:  Text('\$12',style: TextStyle(
      color: Colors.white
    ))
  ),
  SizedBox(width:10),
Text('\$25',style: TextStyle(
  fontSize: font10,
  color: Colors.grey[400],
  decoration: TextDecoration.lineThrough,
  decorationStyle: TextDecorationStyle.solid,
  decorationColor: Colors.grey[700],
)),
]
),
SizedBox(height: 12),
Expanded(
  child:   Container(
  
    child:   Row(
  
    
  
      children: <Widget>[
  
    
  
        Icon(Icons.star,size: 10,color:Color(0xff7DBE2E)),
  
    
  
      Icon(Icons.star,size: 12,color:Color(0xff7DBE2E)),
  
    
  
       Icon(Icons.star,size: 16,color:Color(0xff7DBE2E)),
  
    
  
      Icon(Icons.star,size: 18,color:Color(0xff7DBE2E)),
  
    
  
        Icon(Icons.star_border,size: 20,color:Color(0xff7DBE2E)), 
  
    
  
        SizedBox(width: _width/MediaQuery.of(context).devicePixelRatio/3),
  
    
  
         Text('4.4 Ratings',style: TextStyle(
  
    
  
           fontSize: font10,
  
    
  
           color: Colors.grey[400]
  
    
  
         )),
  
    
  
        Text(' | ',style: TextStyle(
  
    
  
           fontSize: font8,
  
    
  
            color: Colors.grey[400]
  
    
  
         )),
  
    
  
         Text('23 Reviews',style: TextStyle(
  
    
  
           fontSize: font8,
  
    
  
            color: Colors.grey[400]
  
    
  
         ))
  
    
  
      ]
  
    
  
      ),
  
  ),
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
title: Text("Shopping List",
  style:TextStyle(
     color:Color.fromRGBO(179, 210, 21, 1)
     ),
  ),

actions: <Widget>[
IconButton(
  icon:Icon(Icons.more_vert,
    color: Color(0xff7DBE2E),),
  onPressed: (){},
  ),
],
      ),
body:ListView(
  children: <Widget>[
    Padding(
      
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Collections',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: font16
          )),
          GestureDetector(
            
            child: Row(
              children: <Widget>[
                  Icon(Icons.add,size: 12,color: Color.fromRGBO(179, 210, 21, 1)),
                  Text('New Collection',style: TextStyle(
                     color:Color.fromRGBO(179, 210, 21, 1),
                     fontWeight: FontWeight.bold,
                     fontSize: 15
                  ),)
              ],
            ),
            onTap: (){},
          )
          
          
        ],
      ),
    ),
    row(),
        list(),
  ],
),
    );
  }
}