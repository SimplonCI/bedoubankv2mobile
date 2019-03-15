import 'package:flutter/material.dart';
import 'dart:async';
import 'package:bedoubank/intro/SlideAccueil.dart';


void main() => runApp(new MonApp());

class MonApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new SplashScreen(),
      theme: new ThemeData(
          primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/SlideAccueil': (BuildContext context) => new SlideAccueil()
      },


    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/SlideAccueil');
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
   backgroundColor: Color(0xff11172A),
      body: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child: new Image.asset('assets/images/logo.png'),

            ),
            new Center(
              child: new Image.asset('assets/images/loader.gif',width: 30.0,height: 30.0,),

            )
            
          ],
            
          ),
    
      ),
    );
  }
}