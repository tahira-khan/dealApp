import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}
class _NotificationsState extends State<Notifications> {
 final FocusNode myFocusNode = FocusNode();
  List saved ;
  Future<String> loadAsset() async {
  var jsondata = await rootBundle.loadString('assets/data/notifications.json');
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
Widget list(){
var list = ListView.builder(
  itemCount: saved == null ? 0 : saved.length,
  itemBuilder: (context,index){
return Card(
  elevation: 1,
  child: ListTile(
leading: CircleAvatar(
    radius: 30,
    child: ClipOval(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: CachedNetworkImage(
                       imageUrl: saved[index]['link'],
                          placeholder: (context, url) => new CircularProgressIndicator(),
                          errorWidget: (context, url, error) => new Icon(Icons.error),
                          fadeOutDuration: new Duration(seconds: 1),
                          fadeInDuration: new Duration(seconds: 3),
                        ),
  ),
        ),
),
title: RichText(
  text: TextSpan(
    children: <TextSpan>[
      TextSpan(text:saved[index]['title'] == null ? '': saved[index]['title'],
       style: TextStyle(fontWeight: FontWeight.bold,
      color:Colors.black,
      )
      ),
      TextSpan(text: ' has updated their featured deal',
      style: TextStyle(
color: Colors.grey
      )
      ),
    ],
  ),
),
subtitle: Text("19 minutes ago"),
  ),
);
}
);
return list;
}
  @override
  Widget build(BuildContext context) {
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
title: Text("Notifications",
  style:TextStyle(
     color:Color.fromRGBO(179, 210, 21, 1)
     ),
  ),
bottom: PreferredSize(child: Padding(
  padding: const EdgeInsets.only(bottom: 10,right:20,left:20 ),
  child:   Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
          Text("Mark as all read",
           style:TextStyle(
       color:Color.fromRGBO(179, 210, 21, 1)
       ),
          ),
          Text("Clear",
           style:TextStyle(
       color:Color.fromRGBO(179, 210, 21, 1)
       ),
          ),
    ],
  ),
), preferredSize: Size.fromHeight(30.0)),
actions: <Widget>[
IconButton(
  icon:Icon(Icons.more_vert,
    color: Color(0xff7DBE2E),),
  onPressed: (){},
  ),
],
      ),
body:list(),
    );
  }
}