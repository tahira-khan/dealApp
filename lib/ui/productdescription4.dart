import 'package:flutter/material.dart';
import 'package:tempdeal/ui/mystore.dart';


class Productdescription4 extends StatefulWidget {
  @override
  _Productdescription4State createState() => _Productdescription4State();
}

class _Productdescription4State extends State<Productdescription4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
children: <Widget>[
SizedBox(height: 150,),

Image.asset("assets/images/fine1.png"),
GestureDetector(
  
  onTap: (){

                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Mystore()),
  );

  },
  child: Image.asset("assets/images/fine2.png"))
],

        ),
      ),
      
    );
  }
}