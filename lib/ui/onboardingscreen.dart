import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tempdeal/ui/splashscreen1.dart';
class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Color.fromRGBO(179, 210, 21, 1) : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
double _width;
double _height;
  @override
  Widget build(BuildContext context) {
 _width = MediaQuery.of(context).size.width;
     _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: SingleChildScrollView(
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: _height/1.4,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onboard1.png',
                                  ),
                                  height: _height/3,
                                  width: 300.0,
                                ),
                              ),
                                SizedBox(height: 40.0),
                         Center(
                              child: Text("Discover the best \ndeals near you",
                          textAlign: TextAlign.center,
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                          color: Color(0xff7DBE2E),
fontSize: 20
                           ),
                           ),
                            ),
SizedBox(height: 20,),
                           Text("All the best grocery and household items on promotion in one place", textAlign: TextAlign.center,
                           style: TextStyle(
                          color: Colors.blueGrey,
fontSize: 15
                           ),
                           )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/normal.png',
                                  ),
                               height: _height/3,
                                  width: 300.0,
                                ),
                              ),
                              SizedBox(height: 40.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 30,right:30),
                                child: Center(
                                child: Text("Save on items you \nbuy regularly",
                          textAlign: TextAlign.center,
                           style: TextStyle(
                                 fontWeight: FontWeight.bold,
                          color: Color(0xff7DBE2E),
fontSize: 20
                           ),
                           ),
                            ),
                              ),
SizedBox(height: 20,),
                           Text("Set alerts for daily items and receive promotion updates", textAlign: TextAlign.center,
                           style: TextStyle(
                          color: Colors.blueGrey,
fontSize: 15
                           ),
                           )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onboard3.png',
                                  ),
                                   height: _height/3,
                                  width: 300.0,
                                ),
                              ),
        SizedBox(height: 40.0),
                            Center(
                              child: Text("Share your shopping list with Friends & Family",
                          textAlign: TextAlign.center,
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                          color: Color(0xff7DBE2E),
fontSize: 20
                           ),
                           ),
                            ),
SizedBox(height: 20,),
                           Text("Sharing your shopping list has become whole lot easier", textAlign: TextAlign.center,
                           style: TextStyle(
                          color: Colors.blueGrey,
fontSize: 15,

                           ),
                           )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
FlatButton(
                      onPressed: () {
                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Splashscreen1()),
  );
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xff7DBE2E),
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        if(currentPage!=2){
   _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                        }else {
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Splashscreen1()),
  );
                        }
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Color(0xff7DBE2E),
                          fontSize: 20.0,
                        ),
                      ),
                    ),
],
)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}