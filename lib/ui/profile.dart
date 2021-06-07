import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  double lat=32.7767;
  double long=-96.7970;
    final CameraPosition _initialCamera = CameraPosition(
    target: LatLng(32.7767, -96.7970),
    zoom: 14.0000,
  );

 Completer<GoogleMapController> _mapController = Completer();
  double _width,_height;
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
          fontSize: font12,
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
    left: 5,
    top: _width/4.7,

    child: Text(

   saved[index]['content'] == null ? '': saved[index]['content'],
   textAlign: TextAlign.left,
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

      body:ListView(
        children: <Widget>[
          Container(
           width:MediaQuery.of(context).size.width ,
            child: Stack(
              
           overflow: Overflow.clip,
            children: <Widget>[
                Image.asset(
                        "assets/images/burger.jpg",
                        fit: BoxFit.fill,
                  width:MediaQuery.of(context).size.width ,
                  height: 200,
                      ),
                      

 Container(
    height: 30,
     
    ) ,
Row(

  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.end,
  children: <Widget>[
   Container(
     
  margin: EdgeInsets.only(left:10,top:120),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(150),
    color: Colors.white,
  ),
  padding: EdgeInsets.all(5),

height: 110,
width: 110,
child:Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(120),
    color: Colors.white,
  ),
  child: CircleAvatar(
    backgroundImage: NetworkImage('https://media.istockphoto.com/photos/stock-market-chart-picture-id871501642'),
  )
) 
),
   Container(
     padding: EdgeInsets.only(left:2),
     width:MediaQuery.of(context).size.width/2,
  margin: EdgeInsets.only(bottom:40),
     child:Text('MT Supermarket', textAlign: TextAlign.start, style: TextStyle(
           fontSize: 18, 
           color: Colors.white,
           fontWeight: FontWeight.bold
     )) ,
   ),
    

   
Container(margin: EdgeInsets.only(bottom:40),
           width:MediaQuery.of(context).size.width/11,
              child: Icon(Icons.favorite_border,color: Colors.white)),
 
]),

              AppBar(
                backgroundColor: Colors.transparent,
                
leading: IconButton(
      onPressed: (){

        Navigator.pop(context);
      },
          icon: Icon(Icons.arrow_back,
      color:Colors.white,
      ),
    ),

 actions: <Widget>[
              Icon(Icons.local_offer),
              Icon(Icons.notifications),
              
               Icon(Icons.share),
              Icon(Icons.more_vert),

          ],
              ),
             
             
            ],
          )
          
           
    ),
       
       Card(
         elevation: 5,
margin: EdgeInsets.all(0),
         child: Container(
     
           margin: EdgeInsets.all(10),
           child: Text(
             "Welcome to MT Supermarket, the international grocery store as big as texas",
           style:TextStyle(
             color: Colors.grey,
             fontSize: 13,
           ) ,
           ),
         ),
       ),
 Card(
elevation: 5,
   shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
   margin: EdgeInsets.all(20),
    child: Container(
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
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
      ),
    ),
 ),

Container(
            margin: EdgeInsets.only(left:15.0,top:12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Featured Discount',
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: font20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:10.0),
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
listtoppics(),


Card(

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


),



Card(
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

),


Card(
child: Column(

children: <Widget>[
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
        Padding(
    
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
    
      child:   Text("Information",
    
      
    
      style: TextStyle(
    
    
    
    fontWeight: FontWeight.bold,
    
    fontSize: font17,
    
    
    
    
    
      ),
    
      ),
    
    ),

    
  ],
),

  Container(
    margin: EdgeInsets.all(20),
    height: _height/4,
    child: GoogleMap(
      
            zoomControlsEnabled: true,
    
                    mapType: MapType.normal,
    
                    initialCameraPosition: _initialCamera,
    
                    onMapCreated: (GoogleMapController controller) {
    
                      _mapController.complete(controller);
    
                    },
    
          markers: {
    
    Marker(
    visible: true,
        
    markerId: MarkerId("1"),
    
    position:LatLng(lat, long),
    
     onTap: (){

        },
    infoWindow: new InfoWindow(
    
    ),
    
    icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueGreen
    )),
      
      }
      
      ),
  ),

Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
      
Padding(  padding: const EdgeInsets.only(left:10,top: 2),
    
      child:   Text("Address ",
    
      style: TextStyle(
    
    color: Colors.grey,
    
    fontWeight: FontWeight.bold,
    
    fontSize: font10,
 
    
      ),
    
      
    
      ),
    
    ),Padding(
    
      padding: const EdgeInsets.only(left:10,top: 2),
    
      child:   Text("6481 Walker Trail South Deantown",
    
      
    
        
    
      style: TextStyle(
    
    color: Colors.grey,
    

    
    fontSize: font10,
    
    
    
    
    
      ),
    
      
    
      ),
    
    ),
Padding(  padding: const EdgeInsets.only(left:10,top: 2),
    
      child:   Text("Distance",
    
      style: TextStyle(
    
    color: Colors.grey,
    
    fontWeight: FontWeight.bold,
    
    fontSize: font10,
 
    
      ),
    
      
    
      ),
    
    ),Padding(
    
      padding: const EdgeInsets.only(left:10,top: 2),
    
      child:   Text("0.55 mi",
    
    
      style: TextStyle(
    
    color: Colors.grey,
    

    
    fontSize: font10,
    
    
    
    
    
      ),
    
      
    
      ),
    
    ),

  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
      
Padding(  padding: const EdgeInsets.only(left:10,top: 2,bottom: 10),
    
      child:   Text("Contact ",
    
      style: TextStyle(
    
    color: Colors.grey,
    
    fontWeight: FontWeight.bold,
    
    fontSize: font10,
 
    
      ),
    
      
    
      ),
    
    ),Padding(
    
      padding: const EdgeInsets.only(left:10,top: 2,bottom: 10),
    
      child:   Text("(547)792-1580",
    
      
    
        
    
      style: TextStyle(
    
    color: Colors.grey,
    

    
    fontSize: font10,
    
    
    
    
    
      ),
    
      
    
      ),
    
    ),]),
],
),
),
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
      )
    );
  }


}