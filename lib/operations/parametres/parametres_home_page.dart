import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ParametresHomePage extends StatefulWidget {
  @override
  _ParametresHomePageState createState() => _ParametresHomePageState();
}

class _ParametresHomePageState extends State<ParametresHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Text('PARAMETRES'),
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
                        Card(
                          child: Container(
                            width: 135.0,
                            height: 120.0,
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 5.0)),
                                SvgPicture.asset('assets/images/shopping-cart.svg',width: 60.0,height: 60.0,),
                                Text('Mes beneficiaires',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
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
                                Text('Modifier mon code secret',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
                        Card(
                          child: Container(
                            width: 135.0,
                            height: 120.0,
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 5.0)),
                                Image.asset('assets/images/payement_transport.png',width: 60.0,height: 60.0,),
                                Text('Modifier la langue',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
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
                                Image.asset('assets/images/payement_transport.png',width: 60.0,height: 60.0,),
                                Text('A propos',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
                        Card(
                          child: Container(
                            width: 135.0,
                            height: 120.0,
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 5.0)),
                                Image.asset('assets/images/payement_transport.png',width: 60.0,height: 60.0,),
                                Text('Reinitialiser la configuration',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
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
                                Image.asset('assets/images/payement_transport.png',width: 60.0,height: 60.0,),
                                Text('Modifier la langue',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),)
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
      ),
    );
  }
}

