import 'package:flutter/material.dart';

main() => runApp(new ShowPersistentBottomSheetWidget());

// PersistentBottomSheet 持续的底部对话框
class ShowPersistentBottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Test',
      home: new Scaffold(
          appBar:
              new AppBar(title: new Text('Flutter UI Widget -- BottomSheet')),
          body: Builder(
            builder: (context) {
              return RaisedButton(
                onPressed: () {
                  showBottomSheet(
                      // 应用上下文
                      context: context,
                      // 要显示的 BottomSheet	
                      builder: (context) => BottomSheet(
                          onClosing: () {},
                          builder: (context) => Container(
                                height: 200.0,
                                color: Colors.blue,
                                child: Center(
                                  child: RaisedButton(
                                    onPressed: () {
                                      // 关闭PersistentBottomSheet
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('dismissBottomSheet'),
                                  ),
                                ),
                              )));
                },
                child: Text('showBottomSheet'),
              );
            },
          )),
    );
  }
}
