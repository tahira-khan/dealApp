import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:tempdeal/ui/Search.dart';
import 'package:tempdeal/ui/chat.dart';
import 'package:tempdeal/ui/dashboard1.dart';
import 'package:tempdeal/ui/explore.dart';
import 'package:tempdeal/ui/favourite.dart';
import 'dart:async';
import 'dart:convert';
import 'package:tempdeal/ui/login.dart';
import 'package:tempdeal/ui/notifcation.dart';
import 'package:tempdeal/ui/productdescription.dart';
import 'package:tempdeal/ui/productdescription4.dart';
import 'package:tempdeal/ui/productinfo.dart';
import 'package:tempdeal/ui/profile.dart';
import 'package:tempdeal/ui/profile1.dart';
import 'package:tempdeal/ui/shoppinglist.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
 final FocusNode myFocusNode = FocusNode();
int currentindex=0;
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



Container customdivider(double height,double width){
return Container(
height: height,
width: height,
color: Colors.black,
);
}
double _height;
double _width;
double px;
 final List<Widget> viewContainer = [
  ];
Widget trendinglistwidget(index){
return GestureDetector(
onTap: (){   Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => Productinfo()),
   );  },
  child:   Card(
  
    
  
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
  
    
  
            fontSize: font12,
  
    
  
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
  
              decoration: TextDecoration.lineThrough,
  
              decorationThickness: 2,
  
              decorationColor: Colors.grey,
  
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
  
  ),
);
}
  
  
  
  Widget _buildListView() {
    return ListView(
     padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
            margin: EdgeInsets.only(left:10.0,top:12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                Text(
                  'Top Picks',
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: font20,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                GestureDetector(
                  onTap: (){
print('taped');
                        Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => Profile()),
   );
                  },
                                  child: Text(
                    'See all',
                    style:TextStyle(
                      color: Color(0xff7DBE2E),
                    //  color: Color(0xff7DBE2E),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8.0),
              itemCount: saved == null ? 0 : saved.length,
              itemBuilder: (context, index) {
                return 
                                     Container(
                      height: 250,
                      width: 200,
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: const EdgeInsets.all(6),
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
                         new Positioned(
                top: 5.0,
                right: 5.0,
                child: Icon(Icons.favorite,
              color: Colors.grey),
                                 ),
                      ],
                    ),
                ],
              ),
                  );
              }
            ),
          ),
        ],
      ),
  ],
    );
  }
Widget drawerButton(String text,Icon icon,var Class){
return Container(
  margin: EdgeInsets.fromLTRB(15, 0, 35, 0),
  child:   FlatButton(
  color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.white)),
highlightColor: Colors.lightGreen[100],
        onPressed: () {              
          if(Class == null){
          }else {
      Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => Class),
   );
          }
    },
        textColor: Colors.black,
        child: Row(
          children: <Widget>[
            icon,
            SizedBox(width: 6),
            Text("$text",
              style: TextStyle(
             
                color: Colors.grey,
                fontSize: 17)),
          ],
        ),
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
 
 
 double font8,font10,font12,font14,font15,font,font16,font17,font20,font50;


  @override
  Widget build(BuildContext context) {
    px =MediaQuery.of(context).devicePixelRatio;
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
      appBar:GradientAppBar(
        
        actions: <Widget>[
GestureDetector(
  onTap: (){

                       Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => Profile1()),
   );
  },
  child:   CircleAvatar(
  
      radius: 20,
  
      child: ClipOval(
  
          child: Image.network(
  
            'https://modelsfashionpk.com/mfp-images/mfp_profile/Ahmed-Ali-Akbar-Actor-Model-TV-Host-Singer-388.jpg',
  
          ),
  
      ),
  
  ),
),
SizedBox(width: 5),
        ],
        centerTitle: true,
        title: GestureDetector(
          onTap: (){

                   Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => Dashboard1()),
   );

          },
          
          child: Text("HOME")),
bottom:PreferredSize(
preferredSize: Size.fromHeight(100.0),
child: Column(
children: <Widget>[
  Padding(
    padding: const EdgeInsets.only(left:17,bottom: 5),
    child: Row(children: <Widget>[
Icon(Icons.location_on,
color: Colors.white,
size: 25,
),
SizedBox(width: 5,),
Text("Dallas (DAL)",
style: TextStyle(
color: Colors.white,
fontSize: 18
),
)
    ],),
  ),
Container(
                    padding: EdgeInsets.only(
                      right: 25.0,
                      left: 25.0,
                      top:10.0,
                    ),
                    height: 50,
                    child: 
                                        TextField(
                                          onTap: (){

 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>Search()),
  );

                                          },
                        style: TextStyle(color: Colors.black),
                        decoration:InputDecoration(
                              filled: true,
                  fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.only(left: 20.0),
                                 suffixIcon: Icon(Icons.dehaze,color: Colors.grey[700]),    
              prefixIcon: Icon(Icons.search,
              color: Colors.grey[700]),
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
                             hintStyle: TextStyle(
                               fontWeight: FontWeight.bold,fontSize: 15.0, color: Colors.grey),
            ),
                      ),
                  ),
SizedBox(height: 20),
],
),
),
gradient: new LinearGradient(
	  colors: [

   Color(0xffA2C971),
        Color(0xff7DBE2E),
         
      ],
	  begin: FractionalOffset.centerRight,
	  end: FractionalOffset.centerRight,
	),
      ),
     body: ListView(
 padding: const EdgeInsets.all(8),
children: <Widget>[
Container(
            margin: EdgeInsets.only(left:15.0,top:12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Top Picks',
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: font20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(

                  onTap: (){

                                       Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => Profile()),
   );
                  },
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
Container(
            margin: EdgeInsets.only(left:15.0,top:12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Suggested for You',
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: font20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See all',
                  style:TextStyle(
                    color: Color(0xff7DBE2E),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
listtoppics(),
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
                Text(
                  'See all',
                  style:TextStyle(
                    color: Color(0xff7DBE2E),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
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
      drawer: Drawer(

child: Container(
  color: Colors.white,
  child:   ListView(
  
  children: <Widget>[
  
  SizedBox(height: 50),
  
  Padding(
  
    padding: const EdgeInsets.only(left:30),
  
    child:   Row(
  
      children: <Widget>[
  
            CircleAvatar(
  
            radius: 30,
  
            child: ClipOval(
  
                child: Image.network(
  
                  'https://modelsfashionpk.com/mfp-images/mfp_profile/Ahmed-Ali-Akbar-Actor-Model-TV-Host-Singer-388.jpg',
  
                ),
  
            ),
  
        ),
  
      ],
  
    ),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(left: 30,top: 10),
  
    child:   Text("James Woods",
  
    style: TextStyle(
  
  fontSize: font20,
  
  fontWeight: FontWeight.bold,
  
    ),
  
    ),
  
  ),
  
  SizedBox(height: 50),
  
  drawerButton("Profile", Icon(Icons.person,
  
  color: Colors.grey,
  
  ),Profile1(),
  
  ),
  
  drawerButton("Messages", Icon(Icons.mail,
  
  color: Colors.grey,)
  
  ,Chat()
  
  ),
  
  drawerButton("Notifications", Icon(Icons.notifications,
  
  color: Colors.grey,
  
  ),Notifications()
  
  ),
  
  drawerButton("Shopping list", Icon(Icons.shopping_cart,
  
  color: Colors.grey,
  
  ),Shoppinglist()
  
  
  
  
  
  ),
  
  drawerButton("Favourites", Icon(Icons.favorite,
  
  color: Colors.grey,
  
  ),Favourite()
  
  ),
  
  SizedBox(height: 50,),
Container(height: 1, color: Colors.grey[300]),

  
  drawerButton("Settings", Icon(Icons.settings,
  
  color: Colors.grey,
  
  ),null
  
  
  
  ),
  
  drawerButton("Log Out", Icon(Icons.exit_to_app,
  
  color: Colors.grey,
  
  ),
  
  Login()),
  
  ],
  
  ),
),
      ),
      bottomNavigationBar: new BottomNavigationBar(

        selectedItemColor: Color(0xff7DBE2E),
onTap: (value) {


print(value);
  if(value==0){
  }
  if(value==2){
           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Notifications();
  
    }

    
    )
    );
  }


 if(value==1){
           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Explore();
    }

    
    )
    );
  }

},

        unselectedItemColor: Colors.grey, 
                //  onTap: onTabTapped, // new
        //  currentIndex: currentIndex,
         // fixedColor: Colors.white,
          items: [
            BottomNavigationBarItem(
            //  backgroundColor: Color(0xFF414f5a),
          icon:new Icon(Icons.home,
        // color: Color(0xff7DBE2E),
          ),
          title: Text("Home",
           style: TextStyle(
            fontFamily:'Courgette-Regular',
        //   color: Color(0xff7DBE2E),
          ),
          ),
        ),
                 BottomNavigationBarItem(
            //  backgroundColor: Color(0xFF414f5a),
          icon:new Icon(Icons.explore,
       //   color: Color(0xff7DBE2E),
          ),
          title: Text("Explore",
           style: TextStyle(
            fontFamily:'Courgette-Regular',
          //   color: Color(0xff7DBE2E),
          ),
          ),
        ),         BottomNavigationBarItem(
            //  backgroundColor: Color(0xFF414f5a),
          icon:new Icon(Icons.notifications,
       // color: Color(0xff7DBE2E),
          ),
          title: Text("Notifications",
           style: TextStyle(
            fontFamily:'Courgette-Regular',
        //color: Color(0xff7DBE2E),
          ),
          ),
        )
      ]
      ),
    );
  }
}