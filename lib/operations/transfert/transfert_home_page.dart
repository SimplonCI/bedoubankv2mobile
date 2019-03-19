import 'package:flutter/material.dart';



class TransfertHomePage extends StatefulWidget {
  @override
  _TransfertHomePageState createState() => _TransfertHomePageState();
}


// ALERT DIALOG

enum ConfirmAction{ANNULER,VALIDER}

Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async{
  return showDialog<ConfirmAction>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('VERIFICATION'),
          content: const Text('voulez vous transferez la somme de 10.000f a sosthene?'),
          actions: <Widget>[
            FlatButton(onPressed: (){
              Navigator.of(context).pop(ConfirmAction.ANNULER);
            },
                child: Text('ANNULER')),
            FlatButton(onPressed: (){
              Navigator.of(context).pop(ConfirmAction.VALIDER);
            }, child: Text('VALIDER'))
          ],
        );
      }
  );
}
// END OF ALERT DIALOG

class _TransfertHomePageState extends State<TransfertHomePage> {



  // declaring key for the form
  final _key = new GlobalKey<FormState>();

  // declaration of boolen for hidding or showing the password
 bool _secureText=true;

 showHide(){
   setState(() {
     _secureText=!_secureText;
   });
 }


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back)),
        title: Text('TRANSFERT D ARGENT'),
        centerTitle: true,
      ),
      body: Form(
          key: _key,
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 3.0)),
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
                        child: new Text('TRANSFEREZ VERS UN PROCHE',textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, right: 15.0,left: 15.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0,),
                  TextFormField(
                    decoration: new InputDecoration(
                      labelText: 'Numero du beneficiaire',
                      labelStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                    decoration: new InputDecoration(
                      labelText: 'Montant de la transaction',
                      labelStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                    obscureText: _secureText,
                    decoration: new InputDecoration(
                      labelText: 'Votre code secret',
                      suffixIcon: IconButton(icon: Icon(_secureText ? Icons.visibility : Icons.visibility_off), onPressed: showHide),
                      labelStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    height: 60.0,
                    child: new Material(
                      borderRadius: BorderRadius.circular(20.0),

                      color: Color(0xff11172A),
                      child: GestureDetector(
                        onTap: ()async {
                          final ConfirmAction action = await _asyncConfirmDialog(context);
                          print("Confirm Action $action" );
                        },
                        child: new Center(
                          child: new Text('VALIDER',style: new TextStyle(fontSize: 25.0,color: Colors.white ,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
