import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Button")),
      body: new Column(children: loadButton()),
    );
  }

  //    new ButtonBar();
//    new ButtonTheme();
//    new DropdownButton(items: null, onChanged: null);
//    new CloseButton();
//    new BackButton();
//    new BackButtonIcon();
//    new FlatButton(onPressed: null, child: null);
//    new FloatingActionButton(onPressed: null);
//    new IconButton(icon: null, onPressed: null);
//    new MaterialButton(onPressed: null);
//    new OutlineButton(onPressed: null);
//    new PopupMenuButton(itemBuilder: null);
//    new RaisedButton(onPressed: null);
//    new RawMaterialButton(onPressed: null);
//    new DropdownButtonFormField(items: null);
//    new DropdownButtonHideUnderline(child: null);
//    new ToggleButtons(children: null, isSelected: null);
//    new FlatButton.icon(onPressed: null, icon: null, label: null);
//    new FloatingActionButton.extended(onPressed: null, label: null);
//    new FloatingActionButtonAnimator();
//    new FloatingActionButtonThemeData();
//    new CupertinoButton(child: null, onPressed: null);
//    new CupertinoButton.filled(child: null, onPressed: null);
  loadButton() {
    String selectedValue = "1";
    List<Widget> buttons = new List();

    // ButtonBar
    ButtonBar buttonBar = new ButtonBar(
        children: <Widget>[new Text("111"), new Text("222"), new Text("333")],
        alignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max);
    buttons.add(buttonBar);

    // ButtonTheme
    ButtonTheme buttonTheme = new ButtonTheme(
      textTheme: ButtonTextTheme.normal,
      child: new Container(
        child: Text("测试ButtonTheme"),
        color: Colors.red,
      ),
      buttonColor: Colors.amber,
      focusColor: Colors.white,
      highlightColor: Colors.blue,
      hoverColor: Colors.deepPurpleAccent,
      height: 50,
      disabledColor: Colors.red,
      alignedDropdown: false,
      minWidth: 1000,
    );
    buttons.add(buttonTheme);

    // BackButton 返回按钮 默认返回上一页
    BackButton backButton = new BackButton(
      color: Colors.red,
    );
    buttons.add(backButton);

    // BackButtonIcon 返回按钮的icon
    BackButtonIcon backButtonIcon = new BackButtonIcon();
    buttons.add(backButtonIcon);

    // CloseButton 关闭按钮 默认关闭当前页面
    CloseButton closeButton = new CloseButton();
    buttons.add(closeButton);

    // DropdownButton
    DropdownButton dropdownButton = new DropdownButton(
      items: [
        new DropdownMenuItem(
          child: Text("111"),
          value: "1",
        ),
        new DropdownMenuItem(
          child: Text("222"),
          value: "2",
        ),
        new DropdownMenuItem(
          child: Text("333"),
          value: "3",
        )
      ],
      onChanged: (T) {
        //下拉菜单item点击之后的回调
        print(T);
//      setState(() {               //StatefulWidget中才可以刷新状态
//        selectedValue=T;
//      });
      },
      hint: Text("请选择"),
      value: selectedValue,
      iconSize: 40,
      isDense: false,
      isExpanded: true,
      iconEnabledColor: Colors.red,
      iconDisabledColor: Colors.deepPurpleAccent,
      underline: new Padding(
          padding: EdgeInsets.all(8.0),
          child: new Divider(
            color: Colors.red,
          )),
      elevation: 20,
    );
    buttons.add(dropdownButton);

    MaterialButton materialButton = new MaterialButton(onPressed: (){},
      color: Colors.yellow,
      focusColor: Colors.red,
      hoverColor: Colors.blue,
      textColor: Colors.deepPurple,
      highlightColor: Colors.white,
        splashColor:Colors.red,
        colorBrightness:Brightness.dark,
      child: Text("materialButton"),);
    buttons.add(materialButton);

    OutlineButton outlineButton = new OutlineButton(onPressed: null,child: Text("outlineButton"),);
    buttons.add(outlineButton);
    
    FlatButton flatButton = new FlatButton(onPressed: (){
    }, child: Text("flatButton"));
    buttons.add(flatButton);

    RaisedButton raisedButton = new RaisedButton(onPressed: null,child: Text("raisedButton"),);
    buttons.add(raisedButton);

    FloatingActionButton floatingActionButton = new FloatingActionButton(onPressed: (){},child: Text("点"),);
    buttons.add(floatingActionButton);

    IconButton iconButton = new IconButton(icon: new Icon(IconData(0xebc7, fontFamily: 'IconFont'), size: 16), onPressed: (){});
    buttons.add(iconButton);



    return buttons;
  }
}
