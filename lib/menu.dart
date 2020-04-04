import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
        backgroundColor: Colors.black12,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Container(
            child: Hero(
              tag: 'Menu', 
              child: Material(
                child: InkWell(
                  child: Image.asset('images/untan.png', width: 50, fit: BoxFit.contain,),
                ),
              )),
          ),
            Container(
              width: 150,
              height: 180,
              padding: EdgeInsets.all(10),
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/Halaman2");
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
              width: 150,
              height: 180,
              padding: EdgeInsets.all(10),
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/Halaman3");
                  },
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: "histori", 
                        child: Image.asset('images/histori.jpg', height: 100, width: 100, fit: BoxFit.contain,)
                        ),
                      Padding(
                        padding: EdgeInsets.all(10)
                        ),
                      Text("HISTORI ABSENSI")
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 150,
              height: 180,
              padding: EdgeInsets.all(10),
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/Halaman3");
                  },
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: "profil", 
                        child: Image.asset('images/profil.jpg', height: 100, width: 100, fit: BoxFit.contain,)
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
