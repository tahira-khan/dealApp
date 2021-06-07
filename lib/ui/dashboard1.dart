

import 'package:flutter/material.dart';
import 'package:flutter_radio_slider/flutter_radio_slider.dart';
class Dashboard1 extends StatefulWidget {
  @override
  _Dashboard1State createState() => _Dashboard1State();
}
class _Dashboard1State extends State<Dashboard1> {
double _width,_height;
double font8,font10,font12,font14,font15,font,font16,font17,font20,font50;



  @override
  Widget build(BuildContext context) {
_width =  MediaQuery.of(context).size.width;


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


  final themeData = SliderTheme.of(context).copyWith
  (
        trackHeight: 3,   
        disabledActiveTickMarkColor: Colors.green,
        overlappingShapeStrokeColor: Colors.grey,
        activeTickMarkColor: Colors.lime[300],
        activeTrackColor: Colors.lime[300],
        inactiveTrackColor: Colors.grey[300],   
        inactiveTickMarkColor: Colors.white    
  );
    return  Scaffold
    (
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        title: Text('HOME',style: TextStyle(
          color: Color(0xff7DBE2E),
            fontSize: 25
            )
        ),
              centerTitle: true,
              elevation: 0,
              actions: <Widget>[
              Icon(Icons.check,color: Color(0xff7DBE2E))
              ],
              leading: IconButton(
                onPressed: (){
                    Navigator.pop(context);
                },
                icon: Icon(Icons.cancel,color: Color(0xff7DBE2E) )),
             ),
              body: ListView(
                padding: EdgeInsets.all(0),
                children: <Widget>[
                Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                child:  SliderTheme(
                  data: themeData,         
                  child:  RadioSlider(
                    onChanged: (value) 
                    {
                                 // Do something
                                  print("Value changed: ${value.toString()}");
                      },
                             value: 1,
                              divisions: 3,
                         outerCircle: false,
                          activeColor: Colors.lime,
                         ),    
                         ),
                         ) ,
                         Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child:    Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              steppertext('OVERVIEW'),

              
              steppertext('       PRICING'),
              steppertext('     SCHEDULING'),
              steppertext('COMPLETED'),
              ],
            ),
           ) ,     
            SizedBox(height: 20),
           ],),  
            card('Overview','Product Title','Category','Search Tags'),
            Container(
                height: 30,
                  ),
                      card('Pricing','Set Price','Discounted Price','Search Tags'),
           ],
           ),
              );  
  }
  Widget steppertext(String text)
  {
    return Text('$text',textAlign: TextAlign.center, style: TextStyle(
      color: Color(0xff7DBE2E),
      fontWeight: FontWeight.bold,
      fontSize: font10
    )
     );
  }
  Widget card(String title,String hinttext1,String hinttext2, String hinttext3)
{
  return Card(margin: EdgeInsets.all(0),    
      shape : RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight:Radius.circular(0))), 
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      SizedBox(height: 10),
   Padding(
     padding: const EdgeInsets.only(left: 15),
     child: labeltext('$title'),
   ),
  SizedBox(height: 20),
  textfield('$hinttext1'),
  SizedBox(height: 20),
  textfield('$hinttext2'),
  SizedBox(height: 20),
 textfield('$hinttext3'),
 SizedBox(height: 70),
    ],
  ),);
}
Widget labeltext(String text)
{
  return Container(
    padding: EdgeInsets.only(left:10),
    width: _width,
    child:Text('$text', textAlign: TextAlign.left, style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold
)
  ),
  );
}
Widget textfield(String hintText)
{
  return Container(
   decoration: BoxDecoration(
    borderRadius:BorderRadius.circular(10),
    color: Color.fromRGBO(242, 255, 242, 9),
    ),
    width: 300,
    child:  TextField(
         decoration: InputDecoration(
           hintText: '$hintText',
           contentPadding: EdgeInsets.only(left:20),
           hintStyle: TextStyle(
             color: Color.fromRGBO(193, 213, 156, 9),
           ),
          enabledBorder: InputBorder.none, 
          focusedBorder: InputBorder.none,          
  )  )
  );
}
}