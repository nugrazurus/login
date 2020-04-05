import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU", style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 180,
              padding: EdgeInsets.all(10),
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/Presensi");
                  },
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: "presensi", 
                        child: Image.asset('images/presensi.png', height: 100, width: 100, fit: BoxFit.contain,)
                        ),
                      Padding(
                        padding: EdgeInsets.all(10)
                        ),
                      Text("PRESENSI")
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 180,
              padding: EdgeInsets.all(10),
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/Histori");
                  },
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: "histori", 
                        child: Image.asset('images/histori.png', height: 100, width: 100, fit: BoxFit.contain,)
                        ),
                      Padding(
                        padding: EdgeInsets.all(10)
                        ),
                      Text("HISTORI PRESENSI")
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 180,
              padding: EdgeInsets.all(10),
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/Profil");
                  },
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: "profil", 
                        child: Image.asset('images/profil.png', height: 100, width: 100, fit: BoxFit.contain,)
                        ),
                      Padding(
                        padding: EdgeInsets.all(10)
                        ),
                      Text("PROFIL")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}