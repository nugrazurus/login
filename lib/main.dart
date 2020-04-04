import 'package:flutter/material.dart';
import 'package:login/presensi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS',
      home: Presensi(),
      routes: <String, WidgetBuilder>{
        '/Menu': (BuildContext context) => new Presensi(),
        //'/Presensi': (BuildContext context) => new Presensi(),
      });
  }
}