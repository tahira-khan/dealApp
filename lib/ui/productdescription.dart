import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_radio_slider/flutter_radio_slider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:tempdeal/ui/mystore.dart';
import 'package:tempdeal/ui/productdescription4.dart';

class Productdescription extends StatefulWidget {
  @override
  _ProductdescriptionState createState() => _ProductdescriptionState();
}

class _ProductdescriptionState extends State<Productdescription> {
  bool checkedValue = false;
  int index = 0;

  Widget overview() {
    return Container(
        padding: EdgeInsets.all(30),
        child: cardpic('Product Title', 'Category', 'Search Tags'));
  }

  Widget pricing() {
    return Container(
        padding: EdgeInsets.all(30),
        //child: card('Pricing','Set Price','Discounted Price','Search Tags'));
        height: MediaQuery.of(context).size.height / 1.4,
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), topRight: Radius.circular(0))),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10),
                Text('PRICING',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: font16)),
                SizedBox(height: 20),
                textfield('Selling Price'),
                SizedBox(height: 20),
                textfield('Discounted Price'),
                SizedBox(height: 20),
                textfield('Duration'),
                SizedBox(height: MediaQuery.of(context).size.height / 5),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            mainUI(0);
                          },
                          child: steppertext('Back')),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 3;
                            });
                          },
                          child: steppertext('Next')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget scheduling() {
    return Container(
        padding: EdgeInsets.all(30),
        //child: card('Pricing','Set Price','Discounted Price','Search Tags'));
        height: MediaQuery.of(context).size.height / 1.4,
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), topRight: Radius.circular(0))),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10),
                Text('PRICING',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: font16)),

                SizedBox(height: 20),
                textfield('Start Time'),
                SizedBox(height: 20),
                textfield('End Time'),
                SizedBox(height: 20),
                //textfield('Duration'),
                SizedBox(height: MediaQuery.of(context).size.height / 3.8),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      steppertext('Cancel'),
                      steppertext('Next'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget publish() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0), topRight: Radius.circular(0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10),
            Text('PUBLISH',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: font16)),
            SizedBox(height: 20),
            Container(
              color: Colors.grey[200],
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/cofe.jpg")),
            ),
            SizedBox(height: 30),
            textfield('Nescafe Expresso'),
            SizedBox(height: 20),
            textfield('Nescafe'),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: <Widget>[
                  Container(
                      height: 5.0,
                      width: 5.0,
                      decoration: new BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Made with premium Arabica beans, hand-picked",
                    style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 3),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                        height: 5.0,
                        width: 5.0,
                        decoration: new BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle,
                        )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      "Medium Roast for the perfectly balanced cup of coffee",
                      style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 3),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                        height: 5.0,
                        width: 5.0,
                        decoration: new BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle,
                        )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Ground 10 times finer than average roast and\ngroun dcoffee",
                    style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 3),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                        height: 5.0,
                        width: 5.0,
                        decoration: new BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle,
                        )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Easy to experiment and customize to your own\nperfect cup",
                    style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 3),
              child: Row(
                children: <Widget>[
                  Container(
                      height: 5.0,
                      width: 5.0,
                      decoration: new BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "1 X 100g jar",
                    style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            textfield('Beverages Expresso'),
            SizedBox(height: 5),
            textfield('30 in stock'),
            SizedBox(height: 5),
            textfield('Search Tags'),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Container(
                  child: Checkbox(
                      activeColor: Colors.green,
                      value: checkedValue,
                      onChanged: (value) {
                        setState(() {
                          checkedValue = value;
                        });
                      }),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'I have read and agree to the',
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[600])),
                        TextSpan(
                            text: ' Terms of Service',
                            style: TextStyle(
                                fontSize: 13, color: Colors.yellow[300])),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                    activeColor: Colors.green,
                    value: checkedValue,
                    onChanged: (value) {
                      setState(() {
                        checkedValue = value;
                      });
                    }),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'I accept the',
                          style:
                              TextStyle(fontSize: 13, color: Colors.grey[600])),
                      TextSpan(
                          text: ' Privacy Policy',
                          style: TextStyle(
                              fontSize: 13, color: Colors.yellow[300])),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  steppertext('back'),
                  steppertext('Next'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mainUI(index) {
    if (index == 0) {
      return overview();
    }
    if (index == 1) {
      return pricing();
    }
    if (index == 2) {
      return scheduling();
    }
    if (index == 3) {
      return publish();
    }
    return null;
  }

 
//File file;//=FilePicker.getFile() as File;
//String fpath="";

  String fpath = "";


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

    final themeData = SliderTheme.of(context).copyWith(
        trackHeight: 3,
        disabledActiveTickMarkColor: Colors.green,
        overlappingShapeStrokeColor: Colors.grey,
        activeTickMarkColor: Colors.lime[300],
        activeTrackColor: Colors.lime[300],
        inactiveTrackColor: Colors.grey[300],
        inactiveTickMarkColor: Colors.white);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        title: Text('',
            style: TextStyle(
                color: Color(0xff7DBE2E), fontSize: 25)),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[],
        leading: Icon(Icons.cancel, color: Color(0xff7DBE2E)),
      ),
      body: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                child: SliderTheme(
                  data: themeData,
                  child: RadioSlider(
                    onChanged: (value) {
                      // Do something
                      print("Value changed: ${value.toString()}");
                      setState(() {
                        value = index;
                      });
                    },
                    value: index,
                    divisions: 3,
                    outerCircle: false,
                    activeColor: Colors.lime,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    steppertext('OVERVIEW'),
                    steppertext('       PRICING'),
                    steppertext('     SCHEDULING'),
                    steppertext('PUBLISH'),
                  ],
                ),
              ),
              //    SizedBox(height: 20),
            ],
          ),
          // Container(
          //  // height: 60,
          //   padding: EdgeInsets.all(30),
          //   child:  cardpic('Product Title','Category','Search Tags')

          //   ),
          // Container(
          //     height: 30,
          //       ),

          //   card('Pricing','Set Price','Discounted Price','Search Tags'),

          mainUI(index)
        ],
      ),
    );
  }

  Widget steppertext(String text) {
    return Text('$text',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color(0xff7DBE2E),
            fontWeight: FontWeight.bold,
            fontSize: 13));
  }

  Widget card(
      String title, String hinttext1, String hinttext2, String hinttext3) {
    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0), topRight: Radius.circular(0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          labeltext('$title'),
          SizedBox(height: 20),
          textfield('$hinttext1'),
          SizedBox(height: 20),
          textfield('$hinttext2'),
          SizedBox(height: 20),
          textfield('$hinttext3'),
          SizedBox(height: 70),
        ],
      ),
    );
  }

  Widget cardpic(String hinttext1, String hinttext2, String hinttext3) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0), topRight: Radius.circular(0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          Text('OVERVIEW',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: font16)),
          SizedBox(height: 20),
          Container(
            height: 220,
            width: 290,
            color: Colors.grey[200],
            child: Center(
                child: GestureDetector(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add_photo_alternate,
                      color: Colors.grey[600], size: 40),
                  Text('Add Images',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500)),
                ],
              ),
              onTap: () {},
            )),
          ),
          SizedBox(height: 30),
          textfield('$hinttext1'),
          SizedBox(height: 20),
          textfield('$hinttext2'),
          SizedBox(height: 20),
          textfield('$hinttext3'),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mystore()),
                      );
                    },
                    child: steppertext('Cancel')),
                GestureDetector(onTap: () {}, child: steppertext('Next')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget labeltext(String text) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      width: _width,
      child: Text('$text',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    );
  }

  Widget textfield(String hintText) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: Color.fromRGBO(242, 255, 242, 9),
        ),
        width: 300,
        child: TextField(
            decoration: InputDecoration(
          hintText: '$hintText',
          contentPadding: EdgeInsets.only(left: 20),
          hintStyle: TextStyle(
            color: Color.fromRGBO(193, 213, 156, 9),
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        )));
  }
}
