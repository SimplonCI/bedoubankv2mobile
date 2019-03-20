import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bedoubank/operations/transfert/transfert_home_page.dart';
import 'package:bedoubank/operations/payement/payement_home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bedoubank/operations/solde/solde_home_page.dart';



class AccueilMembre extends StatefulWidget {


  @override
  _AccueilMembreState createState() => _AccueilMembreState();
}

class _AccueilMembreState extends State<AccueilMembre> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // appel du header en bleu avec le logo
            new HomeScreenTopPart(),
            SizedBox(height: 10.0,),
            MyCards()
          ],
        ),
      ),
    );
  }
}





class MyCards extends StatefulWidget {
  @override
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {


  @override
  Widget build(BuildContext context) {

    // RESPONSIVE WIDTH AND HEIGHT DEFINED

    double width, height;

    if (MediaQuery.of(context).orientation == Orientation.landscape){
      width = MediaQuery.of(context).size.width * 0.25; // width = 25% of the screen
      height = MediaQuery.of(context).size.height * 0.25; //height = 25% of the screen
    }
    else{
      width = MediaQuery.of(context).size.width * 0.10; // width = 10% of the screen
      height = MediaQuery.of(context).size.height * 0.10; //height = 10% of the screen
    }

    // END OF RESPONSIVE VALUES



    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10.0,),
          // widget calling the card content
          CardContents()
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
          child: Image.asset('assets/images/logo2.png'),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 108.0,),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 17.0),
              elevation: 5.0,
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









// BEGINING ON CARD CONTENTS WIDGETS


class CardContents extends StatefulWidget {
  @override
  _CardContentsState createState() => _CardContentsState();
}

class _CardContentsState extends State<CardContents> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          // builder methods always take context!
                          builder: (context) {
                            return TransfertHomePage();
                          },
                        ),
                      );

                    },
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.only(top:5.0,left:5.0,right:5.0),
                        width: 135.0,
                        height: 120.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SvgPicture.asset('assets/images/payment-method.svg',width: 70.0,height: 70.0,),
                            SizedBox(height: 2.0,),
                            Text('TRANSFERT',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                            SvgPicture.asset('assets/images/horizontal-line.svg',width: 150.0,height: 20.0,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      width: 135.0,
                      height: 120.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SvgPicture.asset('assets/images/atm.svg',width: 70.0,height: 70.0,),
                          SizedBox(height: 2.0,),
                          Text('RETRAIT',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                          SvgPicture.asset('assets/images/horizontal-line.svg',width: 150.0,height: 20.0,),
                        ],
                      ),
                    ),
                  ),

                ],
              ),

              SizedBox(height: 10.0,),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          // builder methods always take context!
                          builder: (context) {
                            return PayementHomePage();
                          },
                        ),
                      );
                    },
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        width: 135.0,
                        height: 120.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SvgPicture.asset('assets/images/credit-cards-payment.svg',width: 70.0,height: 70.0,),
                            SizedBox(height: 2.0,),
                            Text('PAYEMENT',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                            SvgPicture.asset('assets/images/horizontal-line.svg',width: 150.0,height: 20.0,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          // builder methods always take context!
                          builder: (context) {
                            return SoldeHomePage();
                          },
                        ),
                      );
                    },
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        width: 135.0,
                        height: 120.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SvgPicture.asset('assets/images/wallet.svg',width: 70.0,height: 70.0,),
                            SizedBox(height: 2.0,),
                            Text('SOLDE',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                            SvgPicture.asset('assets/images/horizontal-line.svg',width: 150.0,height: 20.0,),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: <Widget>[
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      width: 135.0,
                      height: 120.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SvgPicture.asset('assets/images/clock.svg',width: 70.0,height: 70.0,),
                          SizedBox(height: 2.0,),
                          Text('HISTORIQUES',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                          SvgPicture.asset('assets/images/horizontal-line.svg',width: 150.0,height: 20.0,),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      width: 135.0,
                      height: 120.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SvgPicture.asset('assets/images/settings.svg',width: 70.0,height: 70.0,),
                          SizedBox(height: 2.0,),
                          Text('PARAMETRES',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                          SvgPicture.asset('assets/images/horizontal-line.svg',width: 150.0,height: 20.0,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],

    );
  }
}

// END OF WIDGET OF CARD CONTENTS







