import 'package:flutter/material.dart';

main() => runApp(new ShowSimpleDialogWidget());

class ShowSimpleDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Test',
      home: new Scaffold(
          appBar: new AppBar(title: new Text('Test')),
          body: Builder(
            builder: (context) {
              return RaisedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                            title: Text('SimpleDialog Demo'),
                            children: <Widget>[
                              SimpleDialogOption(
                                // 显示的内容一般是 Text
                                child: Text('OK'),
                                // 点击事件，当手指松开时才触发
                                onPressed: () {
                                  // 关闭 SimpleDialog
                                  Navigator.of(context).pop();
                                },
                              ),
                              SimpleDialogOption(
                                // 显示的内容一般是 Text
                                child: Text('CANCEL'),
                                // 点击事件，当手指松开时才触发
                                onPressed: () {
                                  // 关闭 SimpleDialog
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
