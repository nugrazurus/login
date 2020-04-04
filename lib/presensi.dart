import 'package:flutter/material.dart';

class Presensi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PRESENSI"),
        backgroundColor: Colors.black12,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                        tag: "siakad", 
                        child: Image.asset('images/academic.png', height: 100, width: 100, fit: BoxFit.contain,)
                        ),
                      Padding(
                        padding: EdgeInsets.all(10)
                        ),
                      Text("ABSENSI MASUK")
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
                        tag: "simalum", 
                        child: Image.asset('images/alumni.png', height: 100, width: 100, fit: BoxFit.contain,)
                        ),
                      Padding(
                        padding: EdgeInsets.all(10)
                        ),
                      Text("ABSENSI PULANG")
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
