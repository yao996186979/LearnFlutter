

import 'package:flutter/material.dart';

class TextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Button")),
      body:  new LearnDropdownButton()
    );
  }
}
class LearnDropdownButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return dropButton();
  }
}
class dropButton extends State<LearnDropdownButton>{
  getItems(){
    return [
      DropdownMenuItem(value: "haha",child: Text("1234"),),
      DropdownMenuItem(value: "haha",child: Text("1234")),
      DropdownMenuItem(value: "haha",child: Text("1234"))];
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(title: new Text("Button")),
        body:  new Container(child: new DropdownButton(items:
            getItems()  , onChanged: null),)
    );
  }
}