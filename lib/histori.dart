import 'package:flutter/material.dart';

class Histori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log Presensi', style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Card(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(columns: [
                    DataColumn(label: Text('Tanggal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)),
                    DataColumn(label: Text('Masuk', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)),
                    DataColumn(label: Text('Keluar', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),)),
              ], 
              rows: [
                    DataRow(cells: [
                      DataCell(Text('Abcd')),
                      DataCell(Text('Abcd')),
                      DataCell(Text('Abcd')),
                    ]), 
                    DataRow(cells: [
                      DataCell(Text('Abcd')),
                      DataCell(Text('Abcd')),
                      DataCell(Text('Abcd')),
                    ]), 
                    DataRow(cells: [
                      DataCell(Text('Abcd')),
                      DataCell(Text('Abcd')),
                      DataCell(Text('Abcd')),
                    ]), 
              ]),
                  ),
                ),
            ),
          )
        ],
      ),
    );
  }
}