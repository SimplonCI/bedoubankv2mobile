import 'package:flutter/material.dart';
import 'package:bedoubank/home/homepagecontents.dart';
import 'package:bedoubank/home/assistance_page.dart';
import 'package:bedoubank/home/nos_agences_page.dart';


class HomePage extends StatefulWidget {



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int _currentIndex=0;

  Widget callPage( int currentIndex){
    switch (_currentIndex){
      case 0: return AccueilMembre();
      case 1: return Assistance_Page();
      case 2: return Agences_Page();
      break;
      default:return AccueilMembre();
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: callPage( _currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value){
            _currentIndex=value;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('ACCUEIL',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),)

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.help_outline),
                title: Text('ASSISTANCE',style: TextStyle(fontWeight: FontWeight.bold))

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_location),
                title: Text('NOS AGENCES',style: TextStyle(fontWeight: FontWeight.bold))
            )
          ]),
    );
  }
}