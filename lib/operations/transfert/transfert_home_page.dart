import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bedoubank/operations/transfert/classique_transfert.dart';
import 'package:bedoubank/operations/transfert/qr_code_transfert.dart';


class TransfertHomePage extends StatefulWidget {
  @override
  _TransfertHomePageState createState() => _TransfertHomePageState();
}

class _TransfertHomePageState extends State<TransfertHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Text('TRANSFERT'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                // builder methods always take context!
                                builder: (context) {
                                  return ClassiquePayementPage();
                                },
                              ),
                            );
                          },
                          child: Card(
                            child: Container(
                              width: 135.0,
                              height: 120.0,
                              child: Column(
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(top: 5.0)),
                                  SvgPicture.asset('assets/images/shopping-cart.svg',width: 60.0,height: 60.0,),
                                  Text('Transfert classique',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
                                ],
                              ),
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
                                Text('Transfert par QR CODE',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

