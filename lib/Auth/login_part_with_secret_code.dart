
import 'package:flutter/material.dart';
import 'package:bedoubank/home/homepage.dart';



class Login1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
       routes: <String, WidgetBuilder>{
      "/home/homepage.dart": (BuildContext context) => new AccueilMembre(),

       },

      home: new LoginPage_2(),
    );
  }
}

class LoginPage_2 extends StatefulWidget {

  @override
  _LoginPage_2State createState() => _LoginPage_2State();

}

class _LoginPage_2State extends State<LoginPage_2> {




// declaring key for the form
  final _key = new GlobalKey<FormState>();


  // declaration of boolen for hidding or showing the password

  bool _secureText=true;

  showHide(){
    setState(() {
      _secureText = !_secureText;
    });
  }

  // *************end end end end end end********




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // begin of appBar
      appBar: new AppBar(
        backgroundColor: Color(0xff11172A),
        title: new Text('Code secret'),
        centerTitle: true,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back)),
        actions: <Widget>[
          Icon(Icons.help_outline)
        ],
      ),
      body: Form(
        key: _key,
        child: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 5.0)
            ),

            SizedBox(height: 30.0,),

            // our image container
            Container(
              child: Container(
                child: new Center(
                  child: Container(
                    child: new Image.asset('assets/images/logo2.png',
                      width: 240.0,
                      height: 100.0,
                    ),
                  ),

                ),
              ),

            ),

            //***** our texte container*******
            Container(
              padding: EdgeInsets.only(top: 2.0),
              child: Container(
                child: new Center(
                  child: Container(
                    child: new Text('Veuillez entrer un code secret de 6 chiffres',textAlign: TextAlign.center,
                      style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
              child: Column(
                children: <Widget>[

                  SizedBox(height: 10.0,),
                  TextFormField(
                    //***** validator*****
                    validator:  (e){
                      if(e.isEmpty)
                        return 'veuillez saisir votre code secret';
                    },
                    obscureText: _secureText,
                    decoration: new InputDecoration(
                      labelText: 'Code secret',
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
                  SizedBox(height: 40.0,),

                  Container(
                    height: 60.0,
                    child: new Material(
                      borderRadius: BorderRadius.circular(20.0),

                      color: Color(0xff11172A),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, new MaterialPageRoute(
                             builder: (context) =>
                              new AccueilMembre())
                          );
                        },
                        child: new Center(
                          child: new Text('CONNEXION',style: new TextStyle(fontSize: 25.0,color: Colors.white ,fontWeight: FontWeight.bold),),
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








