import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;


class Search extends StatelessWidget {

 final FocusNode myFocusNode = FocusNode();



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
title: Text("Search",
  
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
IconButton(

  icon:Icon(Icons.more_vert,
    color: Color(0xff7DBE2E),),
  onPressed: (){},
  ),

],

      ),



    );
  }
}