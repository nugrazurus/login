import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:intl/intl.dart';

class Presensi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  var now = DateTime.now();
  String formattedDate = DateFormat('h:mm').format(now);
    return Scaffold(
      appBar: AppBar(
        title: Text("PRESENSI", style: TextStyle(color: Colors.white),),
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
                    Toast.show("Check In \nPukul $formattedDate", context, gravity: Toast.CENTER);
                  },
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: "masuk", 
                        child: Image.asset('images/masuk.png', height: 100, width: 100, fit: BoxFit.contain,)
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
                    Toast.show("Check Out \nPukul $formattedDate", context, gravity: Toast.CENTER);
                  },
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: "keluar", 
                        child: Image.asset('images/keluar.png', height: 100, width: 100, fit: BoxFit.contain,)
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
