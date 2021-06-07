import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}
class _ExploreState extends State<Explore> {
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
Widget trendinglistwidget(index){
return Card(
clipBehavior: Clip.antiAliasWithSaveLayer,
elevation: 5.0,
 shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
child: Stack(
  children: <Widget>[
        Column(
      children: <Widget>[
    Container(
      margin: EdgeInsets.all(0),
      child:   ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20.0),
             topRight: const Radius.circular(10.0),
          ),
          child: Stack(
    children: <Widget>[
      CachedNetworkImage(
                       imageUrl: saved[index]['link'],
                          placeholder: (context, url) => new CircularProgressIndicator(),
                          errorWidget: (context, url, error) => new Icon(Icons.error),
                          fadeOutDuration: new Duration(seconds: 1),
                          fadeInDuration: new Duration(seconds: 3),
                        ),
    Positioned(
    top: 20,
    height: 26,
    width: _width/3,
        left: _width/1.45,
      child: Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 30),
          child: Text("Save 30%",
          style: TextStyle(
          color:Colors.white,
          fontSize: 15
          ),
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
    ],
          ),
      ),
    ),
      

         Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

       Text(""),
   
    Padding(
      padding: const EdgeInsets.only(left:30,top:0,bottom:0),
      child:   Text("Licensed Steel Mouse ",
      style: TextStyle(
        fontSize: font12,
    fontWeight: FontWeight.bold,
    color: Colors.black
      ),
      ),
    ),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text( saved[index]['price'] == null ? '': saved[index]['price'],
  
        style: TextStyle(
  
          fontSize: 11,
  
      color: Color(0xff7DBE2E),
  
      //fontWeight: FontWeight.bold,
  
        ),
  
        ),
),
        ],
        ),
 Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

       Text(""),
     //   Text(""),
            //SizedBox(width:0),
    Padding(
      padding: const EdgeInsets.only(left:0,top:0,bottom:0),
      child:   Text("MT SuperMarket ",
      style: TextStyle(
        fontSize: font12,
    fontWeight: FontWeight.bold,
    color: Colors.grey
      ),
      ),
    ),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text( saved[index]['price'] == null ? '': saved[index]['price'],
  
        style: TextStyle(
  
          fontSize: 9,
  
          color: Colors.grey
  
      //fontWeight: FontWeight.bold,
  
        ),
  
        ),
),
        ],
        ),


    Container(
    color: Colors.grey,
    width: _width,
    height: 1.0,
    ),
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
        Text("Favourite",
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
 
 Positioned(

   left: 15,
top:_width/1.8,
    child: Card(
      elevation: 10,
       shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(30.0),
          )),
     
      child: GestureDetector(
        onTap: (){
          print("tapeed");
 

        },
              child: CircleAvatar(
          backgroundColor: Colors.white70,
          radius: 31,
          child: Container(
            margin: EdgeInsets.all(2),
            child: ClipOval(
                child: Image.network(
                  'https://modelsfashionpk.com/mfp-images/mfp_profile/Ahmed-Ali-Akbar-Actor-Model-TV-Host-Singer-388.jpg',
                ),
            ),
          ),
),
      ),
   ),
 ),
 
  ],
),
);
}
  
  
double _width,_height;
Widget roundedbutton(Icon icon, String text){
return Stack(
  children: <Widget>[
        Container(
      width: 62,
      height: 90,
    decoration: BoxDecoration(
     color: Colors.transparent,
    borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
      child: RaisedButton(
        child: Padding(
          padding: const EdgeInsets.only(top:40),
          child: Text(
            "$text",
maxLines: 1,
            style: TextStyle(
fontSize: font8,
              color:Colors.grey,
            ),
          ),
        ),
            color: Colors.white,
              highlightColor: Color(0xff7DBE2E),
           // shape: BorderRadius.all(Radius.circular(20)),
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: Colors.transparent)
    ),
            onPressed:(){} 
      ),
    ),
    Positioned(
      left: 10,
      top: 10,
      child:    ClipOval(
      child: Material(
        color:  Colors.white, // button color
        child: InkWell(
          splashColor: Colors.white, // inkwell color
          child: SizedBox(width: 40, height: 40, child: icon,
          ),
          onTap: () {},
        ),
      ),
    ),
      ),
  ],
);
}double font8,font10,font12,font14,font15,font,font16,font17,font20,font50;


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
      backgroundColor: Colors.white,
      centerTitle: true,
title: Text("Explore",
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
    Icon(Icons.more_vert,
    color:Color.fromRGBO(179, 210, 21, 1),)
],
      ),
      body: ListView(
         padding: const EdgeInsets.all(8),
         scrollDirection: Axis.vertical,
       //  shrinkWrap: true,
          children: <Widget>[
SingleChildScrollView(
scrollDirection: Axis.horizontal,
  child:   Row(
 // mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: roundedbutton(Icon(Icons.fastfood,
    color: Colors.grey,
    ),"all"),
  ),
 Padding(
    padding: const EdgeInsets.all(8.0),
    child: roundedbutton(Icon(Icons.shopping_cart,
    color: Colors.grey,
    ),"Grocery"),
  ),
   Padding(
    padding: const EdgeInsets.all(8.0),
    child: roundedbutton(Icon(Icons.fastfood,
    color: Colors.grey,
    ),"Food"),
  ), Padding(
    padding: const EdgeInsets.all(6.0),
    child: roundedbutton(Icon(Icons.local_pizza,
    color: Colors.grey,
    ),"Pizza"),
  ),
   Padding(
    padding: const EdgeInsets.all(8.0),
    child: roundedbutton(Icon(Icons.brush,
    color: Colors.grey,
    ),"Cosmetics"),
  ),
   Padding(
    padding: const EdgeInsets.all(8.0),
    child: roundedbutton(Icon(Icons.shopping_cart,
    color: Colors.grey,
    ),"Petfood"),
  ),
   Padding(
    padding: const EdgeInsets.all(8.0),
    child: roundedbutton(Icon(Icons.local_laundry_service,
    color: Colors.grey,
    ),"Laundry"),
  ),
  ],
  ),
),
     Padding(
       padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
       child:  Text(
                  'Collections',
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: font20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
)
//   Swiper(
//      pagination: new SwiperPagination(),
//      scrollDirection: Axis.horizontal,
//    itemBuilder: (context, index ){
//     return Container(
//     child: CachedNetworkImage(
//                        imageUrl:saved[index]['link'] == null ? '': saved[index]['link'],
//                           placeholder: (context, url) => new CircularProgressIndicator(),
//                           errorWidget: (context, url, error) => new Icon(Icons.error),
//                           fadeOutDuration: new Duration(seconds: 1),
//                           fadeInDuration: new Duration(seconds: 3),
// height: 50,
//                         ),
//     );
//     },
//   )
,Container(
  decoration:  BoxDecoration(
   borderRadius: BorderRadius.circular(30),
  ),
  margin: EdgeInsets.all(8),
  height: _height/4.5,
 child: Swiper(
     pagination: new SwiperPagination(),
     scrollDirection: Axis.horizontal,
itemCount: 3,
   itemBuilder: (context, index ){
return ClipRRect(
    borderRadius: BorderRadius.circular(30.0),
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
  Container(
            margin: EdgeInsets.only(left:15.0,top:12.0,bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Trending',
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: font20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    'See all',
                    style:TextStyle(
                      color: Color(0xff7DBE2E),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
ListView.builder(
  physics: ScrollPhysics(),
       shrinkWrap: true,
    itemCount: saved == null ? 0 : saved.length,
  itemBuilder:(context,index){
return trendinglistwidget(index);
}
   ),
          ],
      ),
    );
  }
}