import 'package:flutter/material.dart';
import 'package:bedoubank/Auth/login_part_with_number.dart';


class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccueilPage(),
      routes: <String, WidgetBuilder>{
        '/Auth/login_1': (BuildContext context)=> new LoginPage_1()
      },
    );
  }
}



class AccueilPage extends StatefulWidget {
  @override
  _AccueilPageState createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.help_outline,color: Color(0xff11172A),size: 30.0,), onPressed: (){})
        ],
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // le stack nous a permi de superposer les icons rouge.
           new Image.asset('assets/images/logo2.png', width: 250.0, height: 100.0,),

            Padding( padding: const EdgeInsets.all(20.0),),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    // la partie qui nous permet de faire la redirection vert
                    // la page de connexion
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context) => LoginPage_1(),
                        ));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: 120.0,
                        decoration: new BoxDecoration(
                          color: Color(0xff11172A),borderRadius: new BorderRadius.circular(15.0),
                        ),
                        child: new Text('Acceder a mon compte',style: new TextStyle(fontSize: 20.0,color: Colors.white),),
                      ),
                    ),
                  ),
                )
              ],
            ),



          ],
        ),
      ),
    );
  }
}