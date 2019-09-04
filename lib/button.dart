
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget{
  final String selectedValue = "1";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Button")),
      body: new Column(children: loadButton()),
    );
  }
  loadButton(){
    List<Widget> buttons = new List();

    // ButtonBar
    ButtonBar buttonBar = new ButtonBar(children: <Widget>[
      new Text("111"),
      new Text("222"),
      new Text("333")
    ],);
    buttons.add(buttonBar);

    // ButtonTheme
    ButtonTheme buttonTheme =  new ButtonTheme(
      textTheme: ButtonTextTheme.normal,
      child: new Container(child: Text("123"),color: Colors.red,),
      buttonColor: Colors.amber,
      focusColor: Colors.black38,
      highlightColor: Colors.blue,
      hoverColor: Colors.deepPurpleAccent,
      height: 50,
      disabledColor: Colors.red,
      alignedDropdown: true,
      minWidth: 1000,
    );
    buttons.add(buttonTheme);

    // BackButton 返回按钮 默认返回上一页
    BackButton backButton = new BackButton(color: Colors.red,);
    buttons.add(backButton);

    // BackButtonIcon 返回按钮的icon
    BackButtonIcon backButtonIcon =  new BackButtonIcon();
    buttons.add(backButtonIcon);

    // CloseButton 关闭按钮 默认关闭当前页面
    CloseButton closeButton = new CloseButton();
    buttons.add(closeButton);

    // DropdownButton
    DropdownButton dropdownButton =  new DropdownButton(
        items: [
      DropdownMenuItem(
        child:new Text('1',style: new TextStyle(color: Colors.red),),
        value: '1',
      ),
      DropdownMenuItem(
        child:new Text('2'),
        value: '2',
      ),
       DropdownMenuItem(
        child:new Text('3'),
        value: '3',
      ),
    ],
        value: this.selectedValue,
        onChanged:dropDownMenuAction());
    buttons.add(dropdownButton);


    return buttons;
  }

  dropDownMenuAction(){

  }
}