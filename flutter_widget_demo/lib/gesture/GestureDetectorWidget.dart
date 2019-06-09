import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(GestureDetectorWidget());

class GestureDetectorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter 手势识别Widget")),
        body: GestureDetector(
          // 要检测手势事件的 Widget
          child: Text('手势识别'),
          // 点击事件	
          onTap: (){
            print('点击');
          },
          // 双击事件	
          onDoubleTap: (){
            print('双击');
          },
          // 长按屏幕时触发，当监听了 onLongPress 事件时，
          // 则不能监听 onLongPressDragStart、onLongPressDragUpdate、onLongPressDragUp
          onLongPress:  (){
            print('长按');
          },
          // 手指接触屏幕，并且已经开始水平移动时触发
          onHorizontalDragStart: (DragStartDetails details){
            print('水平滑动');
          },
        ),
      ),
    );
  }
}
