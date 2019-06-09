import 'package:flutter/material.dart';

void main() => runApp(TextWidget());

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- 文本")),
          body: Text("Hello Flutter",
              style: TextStyle(
                  // 文字的颜色
                  color: Colors.blue,
                  // 文字的大小
                  fontSize: 20.0,
                  // 文本的背景色
                  background: new Paint()..color = Colors.yellow,
                  // 文本的线条	TextDecoration.lineThrough：中划线
                  decoration: TextDecoration.lineThrough,
                  // TextDecoration 线条的颜色
                  decorationColor: Colors.blue,
                  // TextDecoration 线条的样式
                  decorationStyle: TextDecorationStyle.solid))),
    );
  }
}
