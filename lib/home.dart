import 'dart:convert';

import 'package:flutter/material.dart';
import 'cell.dart';

class HomePage extends StatelessWidget {
  final ListView listView = new ListView();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home Page'),
      ),
      body:
          new Center(child: new ListView(children: getNavigationData(context))),
    );
  }

  getTextData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add(Text("${i}"));
    }
    return widgets;
  }

  getCustomData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 20; i++) {
      widgets.add(new CustomCell(
          color: i % 2 == 0 ? Colors.blueGrey : Colors.amber,
          child: Text("${i}")));
    }
    return widgets;
  }

  getNavigationData(BuildContext context) {
    List<Widget> widgets = [];
    List directory = getDirectory();
    for (int i = 0; i < directory.length; i++) {
      widgets.add(new GestureDetector(
        child: new NavigationCell(
          labelTitle: directory[i]["title"],
          detailLabelTitle: directory[i]["detailInfo"],
        ),
        onTap: () {
          Navigator.of(context).pushNamed(directory[i]["router"]);
        },
      ));
    }

    return widgets;
  }

  getDirectory() {
    return [
      {"title": "导航", "detailInfo": "Navigation", "router": "/first"},
      {"title": "按钮", "detailInfo": "Button", "router": "/button"},
      {"title": "导航", "detailInfo": "Navigation", "router": "/text"},
      {"title": "导航", "detailInfo": "Navigation", "router": ""},
      {"title": "导航", "detailInfo": "Navigation", "router": ""},
      {"title": "导航", "detailInfo": "Navigation", "router": ""},
      {"title": "导航", "detailInfo": "Navigation", "router": ""},
      {"title": "导航", "detailInfo": "Navigation", "router": ""},
      {"title": "导航", "detailInfo": "Navigation", "router": ""},
      {"title": "导航", "detailInfo": "Navigation", "router": ""}
    ];
  }
}
//DefaultAssetBundle.of(context).loadString('assetss/localData/NavigationDirectory.json').then((value){
//List directory =  json.decode(value);

//
//});
