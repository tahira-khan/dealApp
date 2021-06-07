import 'package:flutter/material.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:tempdeal/ui/chat.dart';
import 'package:tempdeal/ui/chat1.dart';
import 'package:tempdeal/ui/mystore.dart';
import 'package:tempdeal/ui/notifcation.dart';
import 'package:tempdeal/ui/productdescription.dart';
import 'package:tempdeal/ui/profile2.dart';
import 'package:tempdeal/ui/profile4.dart';

class Mystore1 extends StatefulWidget {
  @override
  _Mystore1State createState() => _Mystore1State();
}

class _Mystore1State extends State<Mystore1> {
  TabController controller;
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
          leading: IconButton(
            icon: Icon(Icons.sort),
            color: Color(0xff7DBE2E),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mystore()),
              );
            },
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10),

                Image.asset("assets/images/fine.png"),
                SizedBox(height: 20),
                Text(
                  "Welcome to Deal Now App",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                //and well come to Deal Now www.dealnow.com

                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 10),
                  child: Text(
                    "You have successfully signed up for\n            your sellers account ",
                    style: TextStyle(
                        fontSize: font12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffA2C971),
                            Color(0xff7DBE2E),
//Color(0xFA9022)
                          ],
                        )),
                    height: _height / 16,
                    width: _width / 1.3,
                    child: FlatButton(
                      onPressed: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => Productdescription());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        "Add New Products",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: font20),
                      ),
                    ),
                  ),
                ),
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
            TabItem(icon: Icons.mail_outline, title: 'Messages'),
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
