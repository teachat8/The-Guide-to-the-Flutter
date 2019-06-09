import 'package:flutter/material.dart';

void main() => runApp(FormWidget());

class FormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormWidgetState();
  }
}

class FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _userGender = '男';
  String _userName;
  String _userPassword;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- Form")),
          // 创建 Form，并为其添加 GlobalKey
          // 在 Form 里添加表单元素，并给表单元素添加校验逻辑。 这里添加的表单元素，
          // 我使用到了 DropdownButtonFormField 和 TextFormField：
          body: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                DropdownButtonFormField<String>(
                  value: _userGender,
                  items: ['男', '女']
                      .map((label) => DropdownMenuItem(
                            child: Text(label),
                            value: label,
                          ))
                      .toList(),
                  onChanged: (value){
                    setState(() {
                      _userGender = value;
                    });
                  },
                  onSaved: (value){
                    _userGender = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: '用户名'),
                  // 表单元素的验证逻辑是 validator 函数
                  validator: (value) { //
                    if (value?.length <= 5) {
                      return '用户名必须大于 5 个字符';
                    }
                  },
                  onSaved: (value) {
                    _userName = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: '密码'),
                  // obscureText 设为 Ture，会隐藏当前输入的文字，用 * 代替
                  obscureText: true,
                  // 表单元素的验证逻辑是 validator 函数
                  validator: (value) {
                    if (value?.length <= 8) {
                      return '密码必须大于 8 个字符';
                    }
                  },
                  onSaved: (value) {
                    _userPassword = value;
                  },
                ),
                RaisedButton(
                  child: Text('注册'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      print(_userGender);
                      print(_userName);
                      print(_userPassword);
                    }
                  },
                )
              ],
            ),
          )),
    );
  }
}
