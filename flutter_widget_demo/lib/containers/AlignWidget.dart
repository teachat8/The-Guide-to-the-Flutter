import 'package:flutter/material.dart';

main() => runApp(new AlignWidget());

class AlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Test',
        home: new Scaffold(
            appBar: new AppBar(title: new Text('Flutter 容器Widget -- Align')),
            body: Align(
              // 容器内 child 的对齐方式	
              alignment: Alignment.topRight,
              // 容器里显示的 Widget	
              child: Text(
                'Hello Flutter',
                style: TextStyle(color: Colors.red, fontSize: 50),
              ),
            )));
  }
}
