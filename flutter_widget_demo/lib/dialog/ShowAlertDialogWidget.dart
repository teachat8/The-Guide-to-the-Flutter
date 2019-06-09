import 'package:flutter/material.dart';

main() => runApp(new ShowAlertDialogWidget());

class ShowAlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Test',
      home: new Scaffold(
          appBar: new AppBar(title: new Text('Flutter UI Widget -- 对话框')),
          body: Builder(
            builder: (context) {
              return RaisedButton(
                // 点击事件，当手指松开时才触发
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            // 对话框的标题 通常是 Text
                            title: Text('AlertDialog'),
                            // 对话框的内容
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text('This is an alert dialog'),
                                  Text('add two options.'),
                                ],
                              ),
                            ),
                            // 对话框的选型按钮数组 通常是一组 FlatButton
                            actions: <Widget>[
                              FlatButton(
                                // 显示的内容一般是 Text
                                child: Text('Ok'),
                                // 点击事件，当手指松开时才触发
                                onPressed: () {
                                  // 关闭 AlertDialog
                                  Navigator.of(context).pop();
                                },
                              ),
                              FlatButton(
                                // 显示的内容一般是 Text
                                child: Text('Cancel'),
                                // 点击事件，当手指松开时才触发
                                onPressed: () {
                                  // 关闭 AlertDialog
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ));
                },
                child: Text('showDialog'),
              );
            },
          )),
    );
  }
}
