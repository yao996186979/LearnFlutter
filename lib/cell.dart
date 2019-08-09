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