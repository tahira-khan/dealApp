import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
class Alerts1 extends StatefulWidget {
  @override
  _Alerts1State createState() => _Alerts1State();
}
class _Alerts1State extends State<Alerts1> {
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
void _modalBottomSheetMenu(context){
        showModalBottomSheet(
          isDismissible: true,
            context: context,
            builder: (builder){
              return Container(
                height: 240,
                child: ListView(
children: <Widget>[
ListTile(
  leading: Icon(Icons.share,color: Colors.grey[700]),
  title: Text("Share",style: TextStyle(
    fontSize: font17,
    color: Colors.grey[600],
    fontWeight: FontWeight.bold

  ))
),

ListTile(
  leading: Icon(Icons.group_add,color: Colors.grey[700]),
  title: Text("Collaborator",style: TextStyle(
    fontSize: font17,
    color: Colors.grey[600],
    fontWeight: FontWeight.bold

  ))
),

ListTile(
  leading: Icon(Icons.create,color: Colors.grey[700]),
  title: Text("Edit",style: TextStyle(
    fontSize: font17,
    color: Colors.grey[600],
    fontWeight: FontWeight.bold

  ))
),
ListTile(
  leading: Icon(Icons.delete,color: Colors.grey[700]),
  title: Text("Delete Collection",style: TextStyle(
    fontSize: font17,
    color: Colors.grey[600],
    fontWeight: FontWeight.bold

  ))
),

],

                ),

                    
              );
            }
        );
      }



Widget bottomsheet1()
  {
    return Container(
          height:60,
color: Color.fromRGBO(120, 188, 44, 0.9),
          child: 
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
                Row(
          children: [
           IconButton(
icon: Icon(Icons.expand_less,color: Colors.white),
onPressed: (){



},

           ), 
            
            Text('Weekly items',style: TextStyle(
            color: Colors.white,
              fontSize: font20,
            )),
          ],
          ),
            
            Row(
            children: [
              Container(
                padding: EdgeInsets.only(right:15 ),
                child: Text('Edited \nJuly 2019',style: TextStyle(
            color: Colors.white,
                fontSize: font10,
            )),
              )
            ],
            )
            
          ],
          )
          
     
          
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
  padding: EdgeInsets.fromLTRB(0, 5, 10, 5),
  width: 140,
  height: 130,
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


  SizedBox(height: 15),
  
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


double font8,font10,font12,font14,font15,font,font16,font17,font20,font50;



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

        Navigator.pop(context);
      },
          icon: Icon(Icons.arrow_back,
      color:Color.fromRGBO(179, 210, 21, 1),
      ),
    ),
centerTitle: true,
title: Text("Collection",
  style:TextStyle(
     color:Color.fromRGBO(179, 210, 21, 1)
     ),
  ),
// bottom: PreferredSize(child: Padding(
//   padding: const EdgeInsets.only(bottom: 10,right:20 ),
//   child:   Row(
//   mainAxisAlignment: MainAxisAlignment.end,
//     children: <Widget>[
//           Text("Mark all as read",
//            style:TextStyle(
//        color:Color.fromRGBO(179, 210, 21, 1)
//        ),
//           ),
//     ],
//   ),
// ), 

// preferredSize: Size.fromHeight(30.0)
// ),
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

    list(),
    SizedBox(height: 50,),
  ],
  
  ),


bottomSheet: GestureDetector(
  onTap: (){
    _modalBottomSheetMenu(context);
  },
  child: bottomsheet1()),
    );
  }
}