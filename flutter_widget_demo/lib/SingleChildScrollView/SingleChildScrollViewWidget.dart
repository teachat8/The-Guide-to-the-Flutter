import 'package:flutter/material.dart';

main() => runApp(new SingleChildScrollViewWidget());

class SingleChildScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Test',
        home: new Scaffold(
            appBar: new AppBar(
                title: new Text('Flutter 可滚动Widget -- SingleChildScrollView')),
            body: SingleChildScrollView(
              // 滑动的方向
              // 默认为 Axis.vertical，垂直方向可滑动
              scrollDirection: Axis.horizontal,
              // 添加滚动功能的 Widget
              child: Row(
                // SingleChildScrollView 的列表项	
                children: <Widget>[Text('Hello Flutter ' * 100)],
              ),
            )));
  }
}
