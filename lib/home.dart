import 'package:flutter/material.dart';
import 'cell.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home Page'),
      ),
      body: new Center(child: new ListView(children: getNavigationData(context))),
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
    List<String> titles = ["导航", "列表"];
    List<Widget> widgets = [];
    for (int i = 0; i < titles.length; i++) {
      widgets.add(new GestureDetector(
        child: new NavigationCell(
          labelTitle: titles[i],
          detailLabelTitle: "${i}",
        ),
        onTap: (){
          print("ddd");
        },
      ));
    }
    return widgets;
  }
}
