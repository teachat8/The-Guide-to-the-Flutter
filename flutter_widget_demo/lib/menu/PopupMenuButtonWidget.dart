import 'package:flutter/material.dart';

void main() => runApp(PopupMenuButtonWidget());

class PopupMenuButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- 菜单按钮")),
          body: PopupMenuButton<MenuItem>(
            child: Text('更多'),
            // 在 onSelected 里会返回选中的菜单
            onSelected: (MenuItem result) {
              print('click '+result.toString());
            },
            // 要显示的菜单	
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuItem>>[
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuA,
                    // 这个按钮里显示的内容	
                    child: Text('menu A'),
                  ),
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuB,
                    // 这个按钮里显示的内容	
                    child: Text('menu B'),
                  ),
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuC,
                    // 这个按钮里显示的内容	
                    child: Text('menu C'),
                  ),
                  const PopupMenuItem<MenuItem>(
                    value: MenuItem.menuD,
                    // 这个按钮里显示的内容	
                    child: Text('menu D'),
                  ),
                ],
          )),
    );
  }
}

enum MenuItem { menuA, menuB, menuC, menuD }
