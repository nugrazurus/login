import 'package:flutter/material.dart';
import 'package:login/presensi.dart';
import 'package:login/menu.dart';
import 'package:login/histori.dart';
import 'package:toast/toast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      routes: <String, WidgetBuilder>{
        '/Menu': (BuildContext context) => new MainMenu(),
        '/Presensi': (BuildContext context) => new Presensi(),
        '/Histori': (BuildContext context) => new Histori()
      });
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _nip;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(right: 24, left: 24),
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 48.0,
                  child: Image.asset('images/academic.png'),
                ),
              ),
              SizedBox(height: 20,),
              Center(child: Text('Presensi TIK FMIPA', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),)),
              SizedBox(height: 20,),
              TextFormField(
                autofocus: false,
                onSaved: (value) => _nip = value,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Masukkan NIP Anda";
                  }
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  labelText: "NIP",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                autofocus: false,
                onSaved: (value) => _password = value,
                validator: (value){
                  if (value.isEmpty) {
                    return "Masukkan Password Anda";
                  }
                },
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(height: 20,),
              RaisedButton(
                child: Text('Login', style: TextStyle(color: Colors.white)),
                color: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                onPressed: (){
                  final form = _formKey.currentState;
                  form.save();
                  if (form.validate()) {
                    if (_nip == "H1051171007" && _password == "rahmanitagemoy") {
                      Navigator.pushNamed(context, '/Menu');
                    } else {
                      Toast.show("NIP atau Password anda salah", context, gravity: Toast.TOP);
                    }
                    
                  }
                }, 
              ),
              SizedBox(height: 20,),
            ],
          ),
        )
        ),
    );
  }
}