import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:tempdeal/ui/myproducts.dart';
import 'package:tempdeal/ui/productdescription.dart';
import 'package:tempdeal/ui/productdescription4.dart';
import 'package:tempdeal/ui/profile.dart';
import 'package:tempdeal/ui/profile1.dart';
import 'package:tempdeal/ui/profile2.dart';
import 'package:tempdeal/ui/profile4.dart';
import 'chat.dart';
import 'login.dart';

class Mystore extends StatefulWidget {
  @override
  _MystoreState createState() => _MystoreState();
}

class _MystoreState extends State<Mystore> {
  TabController controller;
  final FocusNode myFocusNode = FocusNode();
  int currentindex = 0;
  List saved;
  Future<String> loadAsset() async {
    var jsondata = await rootBundle.loadString('assets/data/bacon.json');
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

  Widget listcardwithparam(String title, String check, Color textcolor,
      Color bordercolor, Color background) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width),
      child: Container(
        padding: EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        height: 110,
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
                  ],
                ),
                Column(
                  children: <Widget>[
                    Expanded(
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://media.istockphoto.com/photos/couple-eating-lunch-with-fresh-salad-and-appetizers-picture-id944478708',
                        placeholder: (context, url) =>
                            new CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            new Icon(Icons.error),
                        fadeOutDuration: new Duration(seconds: 1),
                        fadeInDuration: new Duration(seconds: 3),
                        fit: BoxFit.cover,
                        width: _width / 3.7,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: Text('H-E-B Original Bacon, 12 oz',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: MediaQuery.of(context)
                                                  .devicePixelRatio *
                                              3.2)),
                                ),
                                Container(
                                    //    margin: EdgeInsets.only(right:10),
                                    padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
                                    decoration: BoxDecoration(
                                        color: background,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.lens,
                                            size: 5, color: textcolor),
                                        SizedBox(width: 5),
                                        Text('$check',
                                            style: TextStyle(
                                              fontSize: font10,
                                              color: textcolor,
                                            )),
                                      ],
                                    ))
                              ])),
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.timer, size: 15),
                                Container(
                                    child: RichText(
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: font10,
                                      //color: Colors.orange
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'From\n',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: '18:00-22/08/2020',
                                          style: TextStyle(
                                              color: Colors.grey[500],
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                )),
                                SizedBox(width: 4),
                                Icon(Icons.timer, size: 15),
                                Container(
                                    child: RichText(
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: font10,
                                      //color: Colors.orange
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'To\n',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: '12:00-25/08/2020',
                                          style: TextStyle(
                                              color: Colors.grey[500],
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                )),
                              ])),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  textbadge('Bacon'),
                                  SizedBox(width: 6),
                                  textbadge('Original'),
                                  SizedBox(width: 6),
                                  textbadge('Fresh')
                                ],
                              )))
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }

  Widget textbadge(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Text('$text',
            style: TextStyle(color: Colors.grey[500], fontSize: font10)));
  }

  Widget drawerButton(String text, Icon icon, var Class) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 35, 0),
      child: FlatButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.white)),
        highlightColor: Colors.lightGreen[100],
        onPressed: () {
          if (Class == null) {
          } else {
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
            Text("$text", style: TextStyle(color: Colors.grey, fontSize: font17)),
          ],
        ),
      ),
    );
  }

  double _width, _height;
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
          iconTheme: new IconThemeData(color: Color.fromRGBO(179, 210, 21, 1)),
          centerTitle: true,
          title: Text(
            "My Store",
            style: TextStyle(
              color: Color.fromRGBO(179, 210, 21, 1),
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Color.fromRGBO(179, 210, 21, 1),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile4()),
                  );
                })
          ],
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                "Dashboard",
                style: TextStyle(
                    fontSize: font17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              crossAxisCount: 2,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.grey[100],
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "Activity\nStatus",
                                style: TextStyle(
                                    fontSize: font12,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                  maxRadius: 6,
                                  child: Text("")),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "55",
                                style: TextStyle(
                                  fontSize: font50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "m",
                                  style: TextStyle(
                                    fontSize: font17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: CircleAvatar(
                                  backgroundColor: Colors.green,

                                  //maxRadius: 11,

                                  radius: 10.5,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 3),
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black,
                                      size: 21,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                "33.53%",
                                style: TextStyle(color: Color(0xffEB4335)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 27),
                              child: Icon(Icons.person),
                            ),
                            SizedBox(width: 20),
                            Text(
                              "03 Users",
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.grey[100],
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "Response\nRate",
                                style: TextStyle(
                                    fontSize: font12,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                  backgroundColor: Color(0xffFBBC05),
                                  maxRadius: 6,
                                  child: Text("")),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "02",
                                style: TextStyle(
                                  fontSize: font50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "hrs",
                                  style: TextStyle(
                                    fontSize: font17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: CircleAvatar(
                                  backgroundColor: Colors.yellow[200],

                                  //maxRadius: 11,

                                  radius: 10.5,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 3),
                                    child: Icon(
                                      Icons.keyboard_arrow_up,
                                      color: Colors.black,
                                      size: 21,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                "86%",
                                style: TextStyle(color: Color(0xff34A853)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.grey[100],
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "Sold\nProducts",
                                style: TextStyle(
                                    fontSize: font12,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                  backgroundColor: Color(0xFF4285F4),
                                  maxRadius: 6,
                                  child: Text("")),
                            )
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "23",
                                style: TextStyle(
                                  fontSize: font50,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //maxRadius: 11,

                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "This week",
                                style: TextStyle(
                                    fontSize: font16, color: Colors.grey[600]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.grey[100],
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "Active\nProducts",
                                style: TextStyle(
                                    fontSize: font12,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                  backgroundColor: Color(0xff34A853),
                                  maxRadius: 6,
                                  child: Text("")),
                            )
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "06",
                                style: TextStyle(
                                  fontSize: font50,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //maxRadius: 11,

                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "This week",
                                style: TextStyle(
                                    fontSize: font16, color: Colors.grey[600]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'My Products',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: font17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyProducts()),
                      );
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(
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
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  if (saved[index]['status'] == 'Active') {
                    return listcardwithparam(
                        saved[index]['content'],
                        saved[index]['status'],
                        Colors.green,
                        Colors.green[600],
                        Colors.yellow[100]);
                  } else if (saved[index]['status'] == 'Pending') {
                    return listcardwithparam(
                        saved[index]['content'],
                        saved[index]['status'],
                        Colors.red,
                        Colors.red,
                        Colors.red[200]);
                  } else if (saved[index]['status'] == 'Inactive') {
                    return listcardwithparam(
                        saved[index]['content'],
                        saved[index]['status'],
                        Colors.blueGrey,
                        Colors.grey[600],
                        Colors.grey[100]);
                  }
                }),
            SizedBox(
              height: 30,
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
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
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    "James Woods",
                    style: TextStyle(
                      fontSize: font20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                drawerButton(
                  "Profile",
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  Profile1(),
                ),
                drawerButton(
                    "Messages",
                    Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                    Chat()),
                drawerButton(
                    "My Products",
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.grey,
                    ),
                    Productdescription()),
                SizedBox(
                  height: 50,
                ),
                drawerButton(
                    "Settings",
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    null),
                drawerButton(
                    "Log Out",
                    Icon(
                      Icons.exit_to_app,
                      color: Colors.grey,
                    ),
                    Login()),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          controller: controller,

          backgroundColor: Colors.white,

          style: TabStyle.fixed,
          activeColor: Color(0xff7DBE2E),

          color: Colors.grey,
          items: [
            TabItem(
              icon: Icons.home,
              title: 'Home',
            ),
            TabItem(
                isIconBlend: false,
                icon: Icon(
                  Icons.add,
                  color: Color(0xff7DBE2E),
                  size: 40,
                ),
                title: ''),
            TabItem(icon: Icons.mail_outline, title: 'Mesages'),
          ],
          initialActiveIndex: 0, //optional, default as 0
          onTap: (index) {
            if (index == 1) {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Productdescription();
              }));
            }

            if (index == 2) {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Chat();
              }));
            }
          },
        ));
  }
}
