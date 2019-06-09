import 'package:flutter/material.dart';

void main() => runApp(IconWidget());

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter UI基础Widget -- 图片和Icon")),
        body: Icon(
          Icons.android,
          // icon的大小
          size: 50.0,
          // 	icon的颜色
          color: Colors.green,
        ),
      ),
    );
  }
}
