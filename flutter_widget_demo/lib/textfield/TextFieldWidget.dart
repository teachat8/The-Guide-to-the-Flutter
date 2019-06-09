import 'package:flutter/material.dart';

void main() => runApp(TextFieldWidget());

class TextFieldWidget extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- 输入框")),
          body: Column(
            children: <Widget>[
              TextField(
                // 输入框中允许的最大字符数	
                maxLength: 10,
                // 用于控制TextField的外观显示，如提示文本、背景颜色、边框等
                decoration: InputDecoration(
                  counterText: ''
                ),
                // 控制 TextField 的编辑，如果没有设置，会有默认值
                controller: _controller,
              ),
              RaisedButton(
                child: Text('获取输入框的内容'),
                onPressed: () {
                  print(_controller.text);
                },
              )
            ],
          )),
    );
  }
}
