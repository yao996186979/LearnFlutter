
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Button")),
      body: new Column(children: loadButton()),
    );
  }
  loadButton(){
    String selectedValue = "1";
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
    DropdownButton dropdownButton = new DropdownButton(items: [
      new DropdownMenuItem(child: Text("111"),value: "1",),
      new DropdownMenuItem(child: Text("222"),value: "2",),
      new DropdownMenuItem(child: Text("333"),value: "3",)
    ]
    , onChanged: (T){//下拉菜单item点击之后的回调

        },hint: Text("请选择"),value: selectedValue,);
    buttons.add(dropdownButton);
    return buttons;

    new ButtonBar();
    new ButtonTheme();
    new DropdownButton(items: null, onChanged: null);
    new CloseButton();
    new BackButton();
    new FlatButton(onPressed: null, child: null);
    new FloatingActionButton(onPressed: null);
    new IconButton(icon: null, onPressed: null);
    new MaterialButton(onPressed: null);
    new OutlineButton(onPressed: null);
    new PopupMenuButton(itemBuilder: null);
    new RaisedButton(onPressed: null);
    new RawMaterialButton(onPressed: null);
    new DropdownButtonFormField(items: null);
    new DropdownButtonHideUnderline(child: null);
    new ToggleButtons(children: null, isSelected: null);
    new BackButtonIcon();
    new FlatButton.icon(onPressed: null, icon: null, label: null);
    new FloatingActionButton.extended(onPressed: null, label: null);
    new FloatingActionButtonAnimator();
    new FloatingActionButtonThemeData();
    new CupertinoButton(child: null, onPressed: null);
    new CupertinoButton.filled(child: null, onPressed: null);
  }


}
