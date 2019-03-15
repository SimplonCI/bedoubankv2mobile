import 'package:flutter/material.dart';

import 'package:intro_slider/intro_slider.dart';

class SlideAccueil extends StatefulWidget {
  SlideAccueil({Key key}) : super(key: key);

  @override
  SlideAccueilState createState() => new SlideAccueilState();
}

// Custom config
class SlideAccueilState extends State<SlideAccueil> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

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

        pathImage: "images/logo_SGBCI.png",
        backgroundColor: Color(0xff11172A),
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
        onCenterItemPress: () {},
      ),
    );
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
        pathImage: "images/loginx.png",
        backgroundColor: Color(0xff11172A),
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
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
        pathImage: "images/userandroid.png",
        backgroundColor: Color(0xff11172A),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 3,
      ),
    );
  }

  void onDonePress() {
    // TODO: go to next screen
  }

  void onSkipPress() {
    // TODO: go to next screen
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