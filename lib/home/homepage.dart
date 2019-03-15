import 'package:flutter/material.dart';


class AccueilMembre extends StatefulWidget {


  @override
  _AccueilMembreState createState() => _AccueilMembreState();
}

class _AccueilMembreState extends State<AccueilMembre> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
            // appel du header en bleu avec le logo
            new HomeScreenTopPart(),
          ],


      ),
    );
  }
}






// debut du container en bleu avec le logo. en un mot le header en quelque sort.

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        // container du logo
           Container(
            height: 150.0,
            color: Color(0xff11172A),
             child: Image.asset('assets/images/logo.png',),
          ),
        // colonne contenant le bouton de deconnexion
        Column(
          children: <Widget>[
            SizedBox(height: 10.0,),
            Padding(padding: const EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 270.0,),
                  Expanded(child: IconButton(icon: Icon(Icons.power_settings_new, color: Colors.white,size: 30.0,), onPressed: null)),

                ],
              ),
            )
          ],
        )

      ],
    );
  }
}
// fiin fiin fiin fiinfiinfiinfiinfiin


