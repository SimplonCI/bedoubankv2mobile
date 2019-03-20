import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PayementHomePage extends StatefulWidget {
  @override
  _PayementHomePageState createState() => _PayementHomePageState();
}

class _PayementHomePageState extends State<PayementHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back)),
        title: Text('PAYEMENT'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 5.0,),
            Container(
              child: Container(
                child: new Center(
                  child: Container(
                    child: new Image.asset('assets/images/logo2.png',
                      width: 150.0,
                      height: 90.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 2.0),
              child: Container(
                child: new Center(
                  child: Container(
                    child: new Text('EFFECTUEZ LE PAYEMENT  \n  D\'UN(E):',textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16.0)),
                  Row(
                    children: <Widget>[
                      Card(
                        child: Container(
                          width: 135.0,
                          height: 120.0,
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 5.0)),
                              SvgPicture.asset('assets/images/shopping-cart.svg',width: 60.0,height: 60.0,),
                              Text('MARCHANDISE',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 135.0,
                          height: 120.0,
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 5.0)),
                              SvgPicture.asset('assets/images/invoice.svg',width: 60.0,height: 60.0,),
                              Text('FACTURE',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: <Widget>[
                      Card(
                        child: Container(
                          width: 135.0,
                          height: 120.0,
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 5.0)),
                              Image.asset('assets/images/payement_transport.png',width: 60.0,height: 60.0,),
                              Text('TRANSPORT',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

