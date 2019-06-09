import 'package:flutter/material.dart';

void main() => runApp(RichTextWidget());

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- 文本")),
          // 一个富文本 Text，可以显示多种样式的 text
          body: RichText(
            text: TextSpan(children: [
              // text: 要显示的文字 style: 文本样式	
              TextSpan(text: "Hello", style: TextStyle(color: Colors.blue)),
              TextSpan(text: "Flutter", style: TextStyle(color: Colors.red))
            ]),
          )),
    );
  }
}
