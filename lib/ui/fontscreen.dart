
import 'package:flutter/material.dart';

class Fontscreen extends StatefulWidget {
  @override
  _FontscreenState createState() => _FontscreenState();
}

class _FontscreenState extends State<Fontscreen> {

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
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("font8",
                
                style:TextStyle(

                  fontSize: font8
                ) ,
                ),
 Text("font8",
                
                style:TextStyle(

                  fontSize: _width*0.019
                ) ,
                ),


              ],
            ),
   Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("font10",
                
                style:TextStyle(

                  fontSize: font10
                ) ,
                ),
 Text("font10",
                
                style:TextStyle(

                  fontSize: _width*0.0244
                ) ,
                ),


              ],
            ),
 Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("font12",
                
                style:TextStyle(

                  fontSize: font12
                ) ,
                ),
 Text("font12",
                
                style:TextStyle(

                  fontSize: _width*0.029
                ) ,
                ),


              ],
            ),
Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("font14",
                
                style:TextStyle(

                  fontSize: 14
                ) ,
                ),
 Text("font14",
                
                style:TextStyle(

                  fontSize: _width*0.034
                ) ,
                ),


              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("font15",
                
                style:TextStyle(

                  fontSize: 15
                ) ,
                ),
 Text("font15",
                
                style:TextStyle(

                  fontSize: _width*0.037
                ) ,
                ),


              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("font50",
                
                style:TextStyle(

                  fontSize: font50
                ) ,
                ),
 Text("font50",
                
                style:TextStyle(

                  fontSize: _width*0.115
                ) ,
                ),


              ],
            )


        ],
      ),
    );
  }
}