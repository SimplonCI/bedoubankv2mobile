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
            SizedBox(height: 10.0,),
            LesGrilles()
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
             width: MediaQuery.of(context).size.width,
            color: Color(0xff11172A),
             child: Image.asset('assets/images/logo.png',),
          ),
           Column(
             children: <Widget>[
               SizedBox(height: 108.0,),
               Card(
                 margin: EdgeInsets.symmetric(horizontal: 17.0),
                 elevation: 6.0,
                 child: Container(
                   padding: EdgeInsets.all(18.0),
                   child: Row(
                     mainAxisSize: MainAxisSize.max,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Expanded(
                         flex: 3,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text('Bnjour Mr. Sosthene', style: TextStyle(fontSize: 20.0),),
                             Divider(color: Colors.grey, height: 15.0,),
                             Text('numero: 78 94 28 37', style: TextStyle(fontSize: 20.0),)
                           ],
                         ),
                       ),

                       Expanded(
                         flex: 1,
                           child: IconButton(icon: Icon(Icons.power_settings_new, color: Color(0xff11172A),size: 40.0, ), onPressed: null))
                     ],
                   ),
                 ),
               ),
             ],
           ),
        // colonne contenant le bouton de deconnexion

      ],
    );
  }
}
// fiin fiin fiin fiinfiinfiinfiinfiin



class LesGrilles extends StatefulWidget {
  @override
  _LesGrillesState createState() => _LesGrillesState();
}

class _LesGrillesState extends State<LesGrilles> {


  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}








