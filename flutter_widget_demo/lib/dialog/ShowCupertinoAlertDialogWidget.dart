import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(new ShowCupertinoAlertDialogWidget());

class ShowCupertinoAlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Test',
      home: new Scaffold(
          appBar: new AppBar(title: new Text('Flutter UI Widget -- 对话框')),
          body: Builder(
            builder: (context) {
              return RaisedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      // iOS 风格的 AlertDialog
                      builder: (context) => CupertinoAlertDialog(
                            // 对话框的标题 通常是 Text
                            title: Text('CupertinoAlertDialog'),
                             // 对话框的内容 通常是 Text
                            content: Text('This is a CupertinoAlertDialog'),
                            // 对话框的选型按钮数组 通常是一组 CupertinoDialogAction
                            actions: <Widget>[
                              CupertinoDialogAction(
                                child: Text('Ok'),
                                onPressed: () {
                                  // 关闭 CupertinoAlertDialog
                                  Navigator.of(context).pop();
                                },
                              ),
                              CupertinoDialogAction(
                                child: Text('Cancel'),
                                onPressed: () {
                                  // 关闭 CupertinoAlertDialog
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
