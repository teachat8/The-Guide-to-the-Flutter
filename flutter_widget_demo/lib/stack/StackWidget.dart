import 'package:flutter/material.dart';

void main() => runApp(StackWidget());

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter布局Widget -- 层叠布局")),
        body: Stack(
          fit: StackFit.expand,
          // Stack布局 里排列的内容	
          children: <Widget>[
            Positioned(
              // 离 Stack 左边的距离
              left: 50,
              // 离 Stack 上边的距离
              top: 100,
              child: Image.asset(
                "images/flutter.png",
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Text('Hello Flutter'),
          ],
        ),
      ),
    );
  }
}