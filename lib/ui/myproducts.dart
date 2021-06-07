import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:cached_network_image/cached_network_image.dart';

import 'dart:convert';



class MyProducts extends StatefulWidget {
  @override
  _MyProductsState createState() => _MyProductsState();
}

class _MyProductsState extends State<MyProducts> {


int sl1=0,sl2=0,sl3=0;
 final FocusNode myFocusNode = FocusNode();

int currentindex=0;
  List saved1 ;
  List saved2 ;
  List saved3 ;
  Future<String> loadAsset() async {
  var jsondata1 = await rootBundle.loadString('assets/data/active.json');
  var jsondata2 = await rootBundle.loadString('assets/data/inactive.json');
  var jsondata3 = await rootBundle.loadString('assets/data/pending.json');
  

  //print(jsondata);
 setState(() {
 saved1 = json.decode(jsondata1);
 saved2 = json.decode(jsondata2);
 saved3 = json.decode(jsondata3);
sl1=saved1.length;
sl2=saved2.length;
sl3=saved3.length;
 });
 return "Successful";
}
  @override
  void initState() {
   super.initState();
   this.loadAsset();
  }
  Widget listcardwithparam(String title, String check,Color textcolor,Color bordercolor,Color background){
return ConstrainedBox(
     constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width ),
                child: Container( padding: EdgeInsets.all(0), width: MediaQuery.of(context).size.width, height: 110,
           child: Card( 
             elevation: 7,
           child: Row(
             children: <Widget>[
Column(
  children: <Widget>[
 Expanded(
    child: Container(
width: 5,
color: bordercolor,
                   ),
 ),
],),
             Column(
               children: <Widget>[

Expanded(
  child:   CachedNetworkImage(
           imageUrl: 'https://media.istockphoto.com/photos/couple-eating-lunch-with-fresh-salad-and-appetizers-picture-id944478708',
             placeholder: (context, url) => new CircularProgressIndicator(),
                errorWidget: (context, url, error) => new Icon(Icons.error),
                  fadeOutDuration: new Duration(seconds: 1),
                    fadeInDuration: new Duration(seconds: 3),
                          fit: BoxFit.cover,
    width: _width/3.7,
                        ),
),
               ],
             ),
            Expanded(child:  
            Column(
               children: <Widget>[
     Container(  padding: EdgeInsets.all(5),child: 
      Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
            Expanded(
                          child: Text('H-E-B Original Bacon, 12 oz',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).devicePixelRatio*3.3
                      )),
            ),
              Container(
          //    margin: EdgeInsets.only(right:10),
                padding: EdgeInsets.fromLTRB(6,2,6,2),
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child:   Row(children: <Widget>[
                      Icon(Icons.lens,size: 5,color: textcolor),
                      SizedBox(width:5),
                      Text('$check', style: TextStyle(
fontSize: 10,
color: textcolor,
                      )),
                    ],)
              )
                  ])
                  ),
 Container(  padding: EdgeInsets.all(5),child: 
      Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
Icon(Icons.timer,size: 15),
    Container(
    child:RichText(
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.visible,
  text: TextSpan(
    style: TextStyle(
      fontSize: 10,
      //color: Colors.orange
    ),
    children: <TextSpan>[
      TextSpan(text: 'From\n', style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w500)),
      TextSpan(text: '18:00-22/08/2020', style: TextStyle(color: Colors.grey[500],fontWeight: FontWeight.w400)),
    ],
  ),)),
SizedBox(width:4),
              Icon(Icons.timer,size: 15),
    Container(
    child:RichText(
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.visible,
  text: TextSpan(
    style: TextStyle(
      fontSize: 10,
      //color: Colors.orange
    ),
    children: <TextSpan>[
      TextSpan(text: 'To\n', style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w500)),
      TextSpan(text: '12:00-25/08/2020', style: TextStyle(color: Colors.grey[500],fontWeight: FontWeight.w400)),
    ],
  ),)),  
                  ])
                  ),
    Expanded(child:   Container(
      padding: EdgeInsets.all(5),
      child:  Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.end,
                     children: <Widget>[
              textbadge('Bacon'),
              SizedBox(width:6),
              textbadge('Original'),
              SizedBox(width:6),
              textbadge('Fresh')
                  ],)
                    ))
               ],
             ),
            )
           ],) 
           ),
         ),
       );
}
  
  
    Widget textbadge(String text)
    {
    return Container(
      padding: EdgeInsets.fromLTRB(8,2,8,2),
decoration: BoxDecoration(
  color: Colors.grey[300],
  borderRadius: BorderRadius.all(Radius.circular(20)),
),
child: Text('$text',style: TextStyle(
  color: Colors.grey[500],
  fontSize: 10
))
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
title: Text("My Products",
  
  style:TextStyle(
    
    
     color:Color.fromRGBO(179, 210, 21, 1)
     
     ),
  
  ),
bottom: PreferredSize(child: Container(
                    padding: EdgeInsets.only(
                      right: 25.0,
                      left: 25.0,
                      top:10.0,
                      
                    ),
                    height: 50,
                    child: 
                                        TextField(
                        style: TextStyle(color: Colors.black),
                        decoration:InputDecoration(
                              filled: true,
                  fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.only(left: 20.0),
                                 suffixIcon: Icon(Icons.dehaze),    
              prefixIcon: Icon(Icons.search,
              color: Colors.grey),
              enabledBorder: OutlineInputBorder(
              
                borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(
                      color: Colors.white, width: 1.0),
                  ),
              focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(
                      color: Colors.white, width: 1.0),
                  ),
                
              hintText: "Search",
                             hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),

            ),
                      ),
                  ), preferredSize: Size.fromHeight(50.0)),
actions: <Widget>[
// IconButton(

//   icon:Icon(Icons.check,
//     color: Color(0xff7DBE2E),),
//   onPressed: (){},
//   ),

],

      ),

body: ListView(
  children: <Widget>[
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text(
  "Active($sl1)",
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold
  ),
  ),
),
ListView.builder(
  shrinkWrap: true,
  physics: ScrollPhysics(),
itemCount: saved1 == null ? 0 : saved1.length,
  
  itemBuilder: (context,index){



return listcardwithparam(saved1[index]['content'], saved1[index]['status'], Colors.green, Colors.green[600],Colors.yellow[100]);




  }
  
  ),
  Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text(
  "Inactive($sl2)",
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold
  ),
  ),
),
ListView.builder(
  shrinkWrap: true,
  physics: ScrollPhysics(),
itemCount: saved2 == null ? 0 : saved2.length,
  
  itemBuilder: (context,index){
return listcardwithparam(saved2[index]['content'], saved2[index]['status'], Colors.blueGrey, Colors.grey[600],Colors.grey[100]);




  }
  
  ),
  Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text(
  "Pending($sl3)",
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold
  ),
  ),
),
ListView.builder(
  shrinkWrap: true,
  physics: ScrollPhysics(),
itemCount: saved1 == null ? 0 : saved1.length,
  
  itemBuilder: (context,index){


return listcardwithparam(saved3[index]['content'], saved3[index]['status'], Colors.red, Colors.red,Colors.red[200]);



  }
  
  )


  ],
),

    );
  }
}