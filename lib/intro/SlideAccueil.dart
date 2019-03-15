import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:bedoubank/Auth/home.dart';

class SlideHomme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new SlideAccueil(),
      routes: <String, WidgetBuilder>{
        '/Auth/home': (BuildContext context)=> new AccueilPage()
      },
    );
  }
}


class SlideAccueil extends StatefulWidget {
  SlideAccueil({Key key}) : super(key: key);

  @override
  SlideAccueilState createState() => new SlideAccueilState();
}

// Custom config
class SlideAccueilState extends State<SlideAccueil> {
  List<Slide> slides = new List();


  // debut des slides
  @override
  void initState() {
    super.initState();

    // declaration du premier slide
    slides.add(
      new Slide(
        title:
            "TRANSFERT",
        maxLineTitle: 2,
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "DESCRIPTION ICI,",
        styleDescription: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        marginDescription:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
        centerWidget: Text("Replace this with a custom widget",
            style: TextStyle(color: Colors.white)),

        pathImage: "assets/images/transfer(1).png",
        backgroundColor: Color(0xff11172A),
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
        onCenterItemPress: () {},
      ),
    );

    // declaration du premier slide
    slides.add(
      new Slide(
        title: "RETRAIT",
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Faite vos retrait dans tous nos guiches",
        styleDescription: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "assets/images/loginx.png",
        backgroundColor: Color(0xff11172A),
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );

    // declaration du premier slide
    slides.add(
      new Slide(
        title: "PAYEMENT",
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Payez tous vos facture avec bedoubank",
        styleDescription: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "assets/images/userandroid.png",
        backgroundColor: Color(0xff11172A),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 3,
      ),
    );
  }

  // indication du chemin vers lequel on va lorsqu'on appui sur TERMINER
  void onDonePress() {
    Navigator.push(context, MaterialPageRoute(builder:
        (context)=> new AccueilPage()
    ));
  }

  // indication du chemin vers lequel on va lorsqu'on appui sur PASSER
  void onSkipPress() {
    Navigator.push(context, MaterialPageRoute(builder:
        (context)=> new AccueilPage()
    ));
  }

  Widget renderNextBtn() {
    return Text(
      'SUIVANT',style: TextStyle(color: Colors.white,fontSize: 15.0),

    );
  }

  Widget renderDoneBtn() {
    return Text(
      'TERMINER',style: TextStyle(color: Colors.white,fontSize: 15.0),

    );
  }

  Widget renderSkipBtn() {
    return Text(
      'PASSER',style: TextStyle(color: Colors.white,fontSize: 15.0),

    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      onSkipPress: this.onSkipPress,
      colorSkipBtn: Color(0x33000000),
      widthSkipBtn: 90.0,
      highlightColorSkipBtn: Color(0xff000000),

      // Next button
      renderNextBtn: this.renderNextBtn(),


      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33000000),
      widthDoneBtn: 110.0,
      highlightColorDoneBtn: Color(0xff000000),

      // Dot indicator
      colorDot: Color(0x33D02090),
      colorActiveDot: Colors.white,
      sizeDot: 13.0,

      // Locale
      locale: 'en',

      // Show or hide status bar
      shouldHideStatusBar: true,

      // Change slides only with buttons
      isScrollable: true,
    );
  }
}