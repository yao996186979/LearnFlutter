import 'package:flutter/material.dart';

class CustomCell extends StatelessWidget {
  // 类似iOS中init初始化方法的重新
  const CustomCell({
    Key key,
    this.color: const Color(0xFF2DBD3A),
    this.child,
  }) : super(key: key);

  //属性声明
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: color,
      child: child,
      height: 100,
    );
  }
}

class NavigationCell extends StatelessWidget {
  // 类似iOS中init初始化方法的重新
  const NavigationCell({
    Key key,
    this.labelTitle: "默认标题",
    this.detailLabelTitle: "默认尾部标题",
  }) : super(key: key);

  //属性声明
  final String labelTitle;
  final String detailLabelTitle;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Row(children: <Widget>[
            new Padding(
                padding: new EdgeInsets.only(left: 15),
                child: new Text(this.labelTitle,
                    style: new TextStyle(color: Colors.black, fontSize: 24))),
            new Padding(
                padding: new EdgeInsets.only(right: 15),
                child: new Row(
                  children: <Widget>[
                    new Text(this.detailLabelTitle,
                        style: new TextStyle(color: Colors.grey, fontSize: 16)),
                    new Icon(IconData(0xebc7, fontFamily: 'IconFont'), size: 16)
                  ],
                ))
          ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
          new Divider()
        ],
      ),
      height: 50,
    );
  }
}
