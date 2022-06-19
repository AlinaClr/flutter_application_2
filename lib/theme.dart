import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.light, //指定亮度主题
          primaryColor: Colors.blue[800], //选蓝色为基准色值。
          accentColor: Colors.lightBlue[100]), //选浅蓝色为强调色值
      home: ThemeTest(),
    );
  }
}

class ThemeTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThemeTest"), //页面标题
      ),
      body: Container(
        color: Theme.of(context).primaryColor, //内容背景颜色
        margin: EdgeInsets.all(100.0),
        padding: EdgeInsets.all(10.0),
        child: Text(
          "MaterialApp Theme Color", //内容文本
          style: TextStyle(
              fontSize: 20, color: Theme.of(context).accentColor), //内容文本颜色
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
