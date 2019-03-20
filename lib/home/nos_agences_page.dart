import 'package:flutter/material.dart';


class Agences_Page extends StatefulWidget {


  @override
  _Agences_PageState createState() => _Agences_PageState();
}

class _Agences_PageState extends State<Agences_Page> {







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOS AGENCES'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.power_settings_new), onPressed: (){

          })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('nom: '), accountEmail: Text('prenom:'),
              decoration: BoxDecoration(color: Colors.red),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 20,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Accueil'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Transfert'),
                leading: Icon(Icons.forward),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Payer facture'),
                leading: Icon(Icons.payment),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Achat de credit'),
                leading: Icon(Icons.attach_money),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Valider un retrait'),
                leading: Icon(Icons.attach_money),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Vers mobile'),
                leading: Icon(Icons.mobile_screen_share),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Ecole'),
                leading: Icon(Icons.school),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Historique'),
                leading: Icon(Icons.history),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Reglage'),
                leading: Icon(Icons.settings),
              ),
            ),InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Vers mobile'),
                leading: Icon(Icons.mobile_screen_share),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Deconnexion'),
                leading: Icon(Icons.power_settings_new),
              ),
            )
          ],
        ),
      ),

      body: Center(
        child: Text('toute nos agences'),
      ),
    );
  }
}