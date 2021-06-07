import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:tempdeal/ui/chat1.dart';
import 'package:tempdeal/ui/mystore.dart';
import 'package:tempdeal/ui/mystore1.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final FocusNode myFocusNode = FocusNode();
  List saved;
  Future<String> loadAsset() async {
    var jsondata = await rootBundle.loadString('assets/data/chat.json');
    print(jsondata);
    setState(() {
      saved = json.decode(jsondata);
    });
    return "Successful";
  }

double font8,font10,font12,font14,font15,font,font16,font17,font20,font50;








  @override
  void initState() {
    super.initState();
    this.loadAsset();
  }

  Widget list() {
    var list = ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: saved == null ? 0 : saved.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 1,
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Chat1()),
                );
              },
              leading: CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: CachedNetworkImage(
                      imageUrl: saved[index]['link'],
                      placeholder: (context, url) =>
                          new CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          new Icon(Icons.error),
                      fadeOutDuration: new Duration(seconds: 1),
                      fadeInDuration: new Duration(seconds: 3),
                    ),
                  ),
                ),
              ),
              title: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: saved[index]['title'] == null
                            ? ''
                            : saved[index]['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              trailing: Container(
                width: 30,
                height: 20,
                decoration: BoxDecoration(
                    color: Color(0xff7DBE2E),
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    "15",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              subtitle: Text(
                  saved[index]['message'] == null
                      ? ''
                      : saved[index]['message'],
                  style: TextStyle(
                    color: Colors.grey,
                  )),
            ),
          );
        });
    return list;
  }
double _width,_height;

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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Mystore()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(179, 210, 21, 1),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Chat",
          style: TextStyle(color: Color.fromRGBO(179, 210, 21, 1)),
        ),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(
                    right: 25.0,
                    left: 25.0,
                    top: 10.0,
                  ),
                  height: 50,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.only(left: 20.0),
                      suffixIcon: Icon(Icons.dehaze),
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: font17,
                          color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(50.0)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Color(0xff7DBE2E),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Pinned",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: font20,
                  color: Colors.grey),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chat1()),
              );
            },
            child: Card(
              elevation: 1,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: ClipOval(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://modelsfashionpk.com/mfp-images/mfp_profile/Ahmed-Ali-Akbar-Actor-Model-TV-Host-Singer-388.jpg",
                        placeholder: (context, url) =>
                            new CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            new Icon(Icons.error),
                        fadeOutDuration: new Duration(seconds: 1),
                        fadeInDuration: new Duration(seconds: 3),
                      ),
                    ),
                  ),
                ),
                title: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "John jones",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
                trailing: Container(
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Color(0xff7DBE2E),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Center(
                    child: Text(
                      "15",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                subtitle: Text("Any discounts on chicken",
                    style: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "General",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: font20,
                  color: Colors.grey),
            ),
          ),
          list(),
        ],
      ),
    );
  }
}
