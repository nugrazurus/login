import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            padding: EdgeInsets.all(10),
            child: Card(
              child: Stack(
                children: <Widget>[
                Hero(
                  tag: 'profil', 
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 50,
                    child: Image.asset('images/profil.png'),
                  )
                  ),
                  Positioned(
                    top: 10,
                    left: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Nama'),
                            Padding(padding: EdgeInsets.only(right: 52)),
                            Text(': Rahmanita Widiyanti')
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('NIP'),
                            Padding(padding: EdgeInsets.only(right: 67)),
                            Text(': H1051171007')
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('Jenis Kelamin'),
                            Padding(padding: EdgeInsets.only(right: 2)),
                            Text(': Perempuan')
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('Email'),
                            Padding(padding: EdgeInsets.only(right: 55)),
                            Text(':'),
                            Text(' rahmanitawdy@gmail.com', style: TextStyle(color: Colors.blue),)
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(right: 5)),
                            RaisedButton(
                              color: Colors.lightBlue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text('Edit Profil', style: TextStyle(color: Colors.white),),
                              onPressed: () {},
                            ),
                            Padding(padding: EdgeInsets.only(right: 5)),
                            RaisedButton(
                              color: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text('Ubah Password', style: TextStyle(color: Colors.white),),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    )
                    ),

                ],
              ),
            ),
          ),
          Divider(height: 10,),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Material(
              child: MaterialButton(
                height: 50,
                child: Text('Keluhan'),
                onPressed: () {},
                ),
            ),
          ),
          Divider(height: 10,),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Material(
              child: MaterialButton(
                height: 50,
                child: Text('Frequently Asked Question', textAlign: TextAlign.left,),
                onPressed: () {},
                ),
            ),
          ),
          Divider(height: 10,),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Material(
              child: MaterialButton(
                height: 50,
                child: Text('Logout', textAlign: TextAlign.left,),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/Login');
                },
                ),
            ),
          ),
          Divider(height: 10,)
      
        ],
      )
        
        );

  }
}