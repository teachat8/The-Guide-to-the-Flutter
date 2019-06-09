import 'package:flutter/material.dart';

main() => runApp(new PaddingWidget());

class PaddingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Test',
        home: new Scaffold(
            appBar: new AppBar(title: new Text('Flutter 容器Widget -- Padding')),
            body: Padding(
              // 容器内边距 上、下、左、右 边距都一样
              padding: EdgeInsets.all(100),
              // 容器里显示的 Widget
              child: Text('Hello Flutter'),
            )));
  }
}
