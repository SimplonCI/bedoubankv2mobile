
import 'package:flutter/material.dart';
import 'package:bedoubank/Auth/login_2.dart';



class Login1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: <String, WidgetBuilder>{
      //"/inscription": (BuildContext context) => new InscriptionPage(),

      // },

      home: new LoginPage_2(),
      title: "My BigBank",
    );
  }
}

class LoginPage_2 extends StatefulWidget {
  @override
  _LoginPage_2State createState() => _LoginPage_2State();
}

class _LoginPage_2State extends State<LoginPage_2> {



  final _key = new GlobalKey<FormState>();

  bool _secureText=true;

  showHide(){
    setState(() {
      _secureText = !_secureText;
    });
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        title: new Text('My BigBank'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.cancel,size: 30.0,), onPressed: (){}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.help,size: 40.0,), onPressed: (){})
        ],
      ),
      body: Form(
        key: _key,
        child: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 5.0)
            ),

            Container(
              child: Container(
                child: new Center(
                  child: Container(
                    child: new Image.asset('images/simplon1.jpg',
                      width: 100.0,
                      height: 100.0,
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
                    child: new Text('Rejoignez votre session',
                      style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.red),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator:  (e){
                      if(e.isEmpty)
                        return 'veuillez sasisir votre email';
                    },

                    decoration: new InputDecoration(
                      hintText: 'ex@ex.com',
                      labelText: 'EMAIL',
                      labelStyle:
                      TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20)
                      ),

                    ),
                  ),
                  SizedBox(height: 10.0,),
                  TextFormField(
                    validator:  (e){
                      if(e.isEmpty)
                        return 'veuillez saisir votre mot de passe';
                    },
                    obscureText: _secureText,

                    decoration: new InputDecoration(
                      hintText: '*********',
                      labelText: 'MOT DE PASSE',
                      suffixIcon: IconButton(icon: Icon(_secureText ? Icons.visibility: Icons.visibility_off), onPressed: showHide,),
                      labelStyle:
                      TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20)
                      ),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 120.0),
                    child: new Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: (){},
                            child: new Text('Mot de passe oublié?',)
                        )
                      ],
                    ),
                  ),


                  Container(
                    height: 40.0,
                    child: new Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.red,
                      color: Colors.red,
                      child: GestureDetector(
                        onTap: (){
                          //Navigator.push(context, new MaterialPageRoute(
                          //   builder: (context) =>
                          //    new AccueilAdmin())
                          //);
                        },
                        child: new Center(
                          child: new Text('CONNEXION',style: new TextStyle(fontSize: 25.0,color: Colors.white ,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),



                  SizedBox(height: 20.0,),

                  Container(
                    height: 40.0,
                    child: new Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.red,
                      color: Colors.red,
                      child: GestureDetector(
                        onTap: (){
                          //  Navigator.push(context, new MaterialPageRoute(
                          //      builder: (context) => new InscriptionPage())
                          //  );
                        },
                        child: new Center(
                          child: new Text('INSCRIPTION',style: new TextStyle(fontSize: 25.0,color: Colors.white ,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30.0,),
                ],
              ),
            )

          ],
        ),
      ),
    );


  }
}








