
import 'package:flutter/material.dart';
import 'package:bedoubank/Auth/login_2.dart';



class Login1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/inscription": (BuildContext context) => new LoginPage_2(),

      },

      home: new LoginPage_1(),
      title: "My BigBank",
    );
  }
}

class LoginPage_1 extends StatefulWidget {
  @override
  _LoginPage_1State createState() => _LoginPage_1State();
}

class _LoginPage_1State extends State<LoginPage_1> {

  
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
        backgroundColor: Color(0xff11172A),
        title: new Text('Authentification'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,size: 30.0,), onPressed: (){}),
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
            SizedBox(height: 30.0,),
            Container(
              child: Container(
                child: new Center(
                  child: Container(
                    child: new Image.asset('assets/images/logo2.png',
                      width: 220.0,
                      height: 100.0,
                    ),
                  ),

                ),
              ),

            ),
            SizedBox(height: 30.0,),


            Container(
              padding: EdgeInsets.only(top: 2.0),
              child: Container(
                child: new Center(
                  child: Container(
                    child: new Text('Nous avond besoin de verifier votre numero',
                      textAlign: TextAlign.center,
                      style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),


            Container(
              padding: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator:  (e){
                      if(e.isEmpty)
                        return 'veuillez sasisir votre numero de telephone';
                    },

                    decoration: new InputDecoration(
                      hintText: '+225',
                      labelText: 'Numero de telephone',
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
                              new LoginPage_2())
                          );
                        },
                        child: new Center(
                          child: new Text('SUIVANT',style: new TextStyle(fontSize: 25.0,color: Colors.white ,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),



                  SizedBox(height: 20.0,),

                ],
              ),
            )

          ],
        ),
      ),
    );


  }
}








