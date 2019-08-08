import 'package:flutter/material.dart';
import 'cell.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home Page'),
      ),
      body: new Center(
          child: new ListView(children: _getListData())
      ),
    );
  }
  _getListData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 10; i++) {

//      widgets.add(Padding(padding:EdgeInsets.all(10.0),
//        child: Text("Row $i"),
//      ));


      widgets.add(new Cell());
    }
    return widgets;
  }



}