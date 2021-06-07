import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';

import 'package:percent_indicator/linear_percent_indicator.dart';
class Productinfo extends StatefulWidget {
  @override
  _ProductinfoState createState() => _ProductinfoState();
}
class _ProductinfoState extends State<Productinfo> {
List saved ;
  Future<String> loadAsset() async {
  var jsondata = await rootBundle.loadString('assets/data/listing.json');
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

int i =1;

Widget trendinglistwidget(i){
return Card(
clipBehavior: Clip.antiAliasWithSaveLayer,
elevation: 5.0,
 shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
child: Column(
  children: <Widget>[
  

SizedBox(height: 15),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
Column(
      children: <Widget>[
    Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    Icon(
      Icons.favorite_border,
      color: Color(0xff7DBE2E),
      ),
    Text("Favorite",
    style: TextStyle(
      color:Colors.grey
    ),
    ),
    ],
    )
      ],
    ),
Column(
  children: <Widget>[
Row(
    children: <Widget>[
     Container(
color: Colors.grey,
width: 1,
height: 20.0,
),
    ],
    )
  ],
),
    Column(
  children: <Widget>[
Row(
    children: <Widget>[
    Icon(
      Icons.notifications_none,
      color: Color(0xff7DBE2E),
      ),
    Text("Alert",
    style: TextStyle(
      color:Colors.grey
    ),
    ),
    ],
    )
  ],
),
Column(
  children: <Widget>[
Row(
    children: <Widget>[
     Container(
color: Colors.grey,
width: 1,
height: 20.0,
),
    ],
    )
  ],
),
Column(
  children: <Widget>[
    Row(
    children: <Widget>[
    Icon(
      Icons.share,
      color: Color(0xff7DBE2E),
      ),
    Text("Share",
    style: TextStyle(
      color:Colors.grey
    ),
    ),
    ],
    )
  ],
)
    ],
    ),
    SizedBox(height: 10,)
  ],
),
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
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
title: Text("",
style: TextStyle(
  color:Color.fromRGBO(179, 210, 21, 1),
),
),
    leading: IconButton(
      onPressed: (){

        Navigator.pop(context);
      },
          icon: Icon(Icons.arrow_back,
      color:Color.fromRGBO(179, 210, 21, 1),
      ),
    ),
    actions: <Widget>[
    
],
      ),
      body: ListView(
         scrollDirection: Axis.vertical,
       //  shrinkWrap: true,
          children: <Widget>[
SingleChildScrollView(
scrollDirection: Axis.horizontal,

),
  
Container(
  color: Colors.white,
  child: Column(
    children: <Widget>[
  

Container(
  
  margin: EdgeInsets.all(10),
  height: _height/2.5,
 child: Swiper(
     pagination: new SwiperPagination(),
     scrollDirection: Axis.horizontal,
itemCount: 3,
   itemBuilder: (context, index ){
return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: CachedNetworkImage(
                       imageUrl:saved[index]['link'] == null ? '': saved[index]['link'],
                          placeholder: (context, url) => new CircularProgressIndicator(),
                          errorWidget: (context, url, error) => new Icon(Icons.error),
                          fadeOutDuration: new Duration(seconds: 1),
                          fadeInDuration: new Duration(seconds: 3),
  fit: BoxFit.fill,
                        ),
);
    },
  ),
),
 trendinglistwidget(i),
    SizedBox(height:30)
    ],
  ),
),
 SizedBox(height: 20),
         
        Container(
       padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
  color: Colors.white,

         
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Text('Nescafe Gold Espddress',style: TextStyle(
      fontSize: font20,
      fontWeight: FontWeight.bold
    )),
    
    Text('\u002411.25',style: TextStyle(
      fontSize: font20,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(179, 210, 21, 1)
    ))
   
  ],
),
       Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Container(
      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.lightGreenAccent[100]
      ),
      child: Text('100g',style: TextStyle(
        fontSize: font12,
        fontWeight: FontWeight.bold
      )),
    ),
    
    Text("\u0024 20.00",style: TextStyle(
      fontSize: 15,
      decorationStyle: TextDecorationStyle.solid,
      decoration: TextDecoration.lineThrough,
      color: Colors.grey[500],
      fontWeight: FontWeight.bold
    ))
   
  ],
),
SizedBox(height:20),
 Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
     Container(
        padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
        
        child: 
        Text('\u2022 Made with premium Arabic bean, hand-picked\n\u2022 Medium Roast for the perfectly balanced cup of\n  coffee\n\u2022 Ground 10 times finer than the average roast and\n  ground coffee\n\u2022 Easy to experiment and customize to your own\n  perfect cup\n\u2022 1x100g jar',style: TextStyle(
          fontSize: 13,
          //fontWeight: FontWeight.bold,
          color: Colors.grey[500]
        )),
      ),
  
    
 
   SizedBox(height:10)
  ],
),


          ],
        )
         
        ),
SizedBox(height:20),
        Container(
  child : listtoppics()
),

SizedBox(height: 20),

ratings(),

SizedBox(height: 20),
productrate(),
SizedBox(height: 20),

Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Center(
  
  
  
    child: Container(
  
  
  
      decoration: BoxDecoration(
  
    
  
  
  
  
  
      ),
  
      width: _width/1.5,
  
      
  
        child: RaisedButton(
  
   shape: RoundedRectangleBorder(
  
      borderRadius: BorderRadius.circular(10),
  
    ),
  
          child: Row(
  
            
  
            
  
            mainAxisAlignment: MainAxisAlignment.center,
  
            children: <Widget>[
  
  
  
            Icon(Icons.report_problem,
  
            
  
            color: Color(0xff7DBE2E),
  
            
  
            
  
            ),
  
        SizedBox(width: 7,),
  
        Text("Report A Problem",
  
        
  
        
  
        style: TextStyle(
  
  
  
          fontSize: font17,
  
           color: Color(0xff7DBE2E),
  
  
  
          
  
        ),
  
        )
  
          ],
  
        
  
          
  
          
  
          ),
  
        color: Colors.white,
  
        onPressed: (){
  
  
  
  
  
      }
  
      
  
      ),
  
    ),
  
  ),
),



          ],
      ),
    );
  }

Widget productrate()
{
  return Card(
child: Column(


children: <Widget>[

Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
        Padding(
    
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
    
      child:   Text("Rate this Store",
    
      
    
      style: TextStyle(
    
    
    
    fontWeight: FontWeight.bold,
    
    fontSize: font17,
    
    
    
    
    
      ),
    
      ),
    
    ),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
        Padding(
    
      padding: const EdgeInsets.only(left:10,top: 2),
    
      child:   Text("Share you exprince with others",
    
      
    
        
    
      style: TextStyle(
    
    color: Colors.grey,
    
    fontWeight: FontWeight.bold,
    
    fontSize: 13,
    
    
    
    
    
      ),
    
      
    
      ),
    
    ),
  ],
),


SizedBox(height: 20,),
Padding(
  padding: const EdgeInsets.all(12.0),
  child:   Row(
  
   mainAxisAlignment: MainAxisAlignment.center,
  
    children: <Widget>[
  
  
  
  Icon(Icons.star_border,
  
  size: 40,
  
   color: Color(0xff7DBE2E),
  
  
  
  ),
  
  SizedBox(width: 5),
  
  Icon(Icons.star_border,
  
  size: 40,
  
   color: Color(0xff7DBE2E),
  
  
  
  ),
  
  
  
  SizedBox(width: 5),
  
  Icon(Icons.star_border,
  
  size: 40,
  
   color: Color(0xff7DBE2E),
  
  ),
  
  SizedBox(width: 5),
  
  Icon(Icons.star_border,
  
  size: 40,
  
   color: Color(0xff7DBE2E),
  
  ),
  
  SizedBox(width: 5),
  
  Icon(Icons.star_border,
  
  size: 40,
  
   color: Color(0xff7DBE2E),
  
  ),
  
    ],
  
  ),
)
],

),

);
}

  Widget ratings()
  {
    return Card(

child:Column(

children: <Widget>[
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
        Padding(
    
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
    
      child:   Text("Ratings and Reviews",
    
      
    
      style: TextStyle(
    
    
    
    fontWeight: FontWeight.bold,
    
    fontSize: font17,
    
    
    
    
    
      ),
    
      ),
    
    ),
  ],
),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[
        Column(
    
  crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
    
    Padding(
      padding: const EdgeInsets.fromLTRB(15, 8, 5, 0),
      child: Text(
      
                          '4.7',
      
                          style:TextStyle(
      
                            color: Color(0xff7DBE2E),
      
                            fontSize: font50,
      
                            fontWeight: FontWeight.bold,
      
                          ),
      
                        ),
    ),
    
    Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 5, 5),
      child: Row(
        children: <Widget>[
           Icon(Icons.star,
   color: Color(0xff7DBE2E),
    size: 17,
  ),
  Icon(Icons.star,
   color: Color(0xff7DBE2E),
  size: 17,
  ),
  Icon(Icons.star,
   color: Color(0xff7DBE2E),
  size: 17,
  ),
  Icon(Icons.star,
   color: Color(0xff7DBE2E),
  size: 17,
  ),
  Icon(Icons.star_border,
   color: Color(0xff7DBE2E),
   size: 17,
  ),
        ],
      ),
    ),
    Padding(
   padding: const EdgeInsets.fromLTRB(20, 0, 5, 5),
      child: RichText(
  text: TextSpan(
      children: <TextSpan>[
        TextSpan(text:"Ratings:",
         style: TextStyle(fontWeight: FontWeight.bold,
        color:Colors.grey,
        )

        ),
 TextSpan(text:" 22",
         style: TextStyle(fontWeight: FontWeight.bold,
        color:Colors.black,
        )

        ),


      ],
  ),
),
    ),
 Padding(
 padding: const EdgeInsets.fromLTRB(20, 0, 5, 5),
   child: RichText(
    text: TextSpan(
      children: <TextSpan>[
        TextSpan(text:"Reviews:",
         style: TextStyle(fontWeight: FontWeight.bold,
        color:Colors.grey,
        )

        ),
   TextSpan(text:"47",
         style: TextStyle(fontWeight: FontWeight.bold,
        color:Colors.black,
        )

        ),


      ],
    ),
),
 ),
    
      ],
    
    ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
   LinearPercentIndicator(
                width: _width/2,
                lineHeight: 10.0,
                percent: 0.7,
             
            leading: Text("5"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey[300],
                progressColor:  Color.fromRGBO(179, 210, 21, 1),
              ),
              SizedBox(height: 5,),
               new LinearPercentIndicator(
                    width: _width/2,
                lineHeight: 10.0,
                percent: 0.5,
             
            leading: Text("4"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey[300],
                progressColor:  Color.fromRGBO(179, 210, 21, 1),
              ),
                  SizedBox(height: 5,),
               new LinearPercentIndicator(
                     width: _width/2,
                     lineHeight: 10.0,
                percent: 0,
             
            leading: Text("3"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey[300],
                progressColor:  Color.fromRGBO(179, 210, 21, 1),
              ),
                  SizedBox(height: 5,),
               new LinearPercentIndicator(
               width: _width/2,
               lineHeight: 10.0,
                percent: 0,
             
            leading: Text("2"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey[300],
                progressColor:  Color.fromRGBO(179, 210, 21, 1),
              ),
                  SizedBox(height: 5,),
               new LinearPercentIndicator(
                 width: _width/2,
                     lineHeight: 10.0,
                percent: 0,
             
            leading: Text("1"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey[300],
                progressColor:  Color.fromRGBO(179, 210, 21, 1),
              ),
],

)
],



) ,
  
  ],
),


);
  }



Widget listtoppics(){
return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        height: _width/2.67,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.fromLTRB(5, 2, 5, 0),
          itemCount: saved == null ? 0 : saved.length,
          itemBuilder: (context, index) {
            return 
                                 Card(
                                                                    child: Container(
                  width: _width/2.05,
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: const EdgeInsets.fromLTRB(6, 6, 6, 0),
          child: Column(           
            children: [
                Stack(
                  children: <Widget>[
                                       new CachedNetworkImage(
                    imageUrl: saved[index]['link'],
                    placeholder: (context, url) => new CircularProgressIndicator(),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                    fadeOutDuration: new Duration(seconds: 1),
                    fadeInDuration: new Duration(seconds: 3),
                  ),
          //            new Positioned(
          //   top: 5.0,
          //   right: 5.0,
          //   child: Icon(Icons.favorite,
          // color: Colors.grey),
          //                    ),

        
  Positioned(
    top: 5,
    height: 20,
    width: 40,
left: _width/2.55,
      child: Container(
      child: Center(
        child: Text("15%",
        style: TextStyle(
color:Colors.white,
        ),
        ),
      ),
      decoration: new BoxDecoration(
 borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10.0),
              //  topRight: const Radius.circular(10.0),
                bottomLeft: const Radius.circular(10.0),
              ),
 color: Color(0xff7DBE2E),
      ),
    ),
  ),
 
 Positioned(
    top: _width/5.2,
    height: 150,
    width: _width,

    child: Container(
        decoration: BoxDecoration(
      
gradient: new LinearGradient(
	  colors: [
       Colors.black26,
      Colors.black26,
        ],

	),
       
        ),
        
      )
  ),

  Positioned(
    left: 5,
    top: _width/4.7,

    child: Text(
   saved[index]['content'] == null ? '': saved[index]['content'],
   style: TextStyle(
     fontSize: 11,
     color: Colors.white,
   ),
  ),
  ),
Positioned(
    left: 5,
    top: _width/3.9,
    child: Row(children: <Widget>[
Icon(Icons.star,
size: 13,
color: Colors.amberAccent,
),
    Text(
   saved[index]['rating'] == null ? '': saved[index]['rating'],
   style: TextStyle(
       fontSize: 11,
     color: Colors.white,
   )
    )
    ]
    )
  ),
                  ],
                ),
            ],
          ),
              ),
                                 );
          }
        ),
      ),
    ],
  );
}
 


}