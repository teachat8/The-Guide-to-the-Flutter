import 'package:flutter/material.dart';

void main() => runApp(ShowAboutDialogWidget());

class ShowAboutDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI Widget -- 对话框")),
          body: Builder(
              builder: (context) => RaisedButton(
                  onPressed: () {
                    showAboutDialog(
                        // 应用上下文	
                        context: context,
                        // 应用的名字
                        applicationName: 'Flutter UI Widget -- 对话框',
                        // 应用的版本
                        applicationVersion: '1.0.0');
                  },
                  // 添加在后面的 Widget
                  child: Text('RaisedButton')))),
    );
  }
}
