import 'dart:math';

import 'package:flutter/material.dart';
import 'package:toggle_rotate/toggle_rotate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(),
          body: Center(child: HomePage()),
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 20,
        children: <Widget>[
          ToggleRotate(
            rad: pi / 2, //选择角度
            curve: Curves.linear, //动画曲线
            child: Icon(Icons.arrow_upward,size: 60,color: Colors.orangeAccent,),
            onTap: () {}, //点击事件
          ),
          ToggleRotate(
            rad: pi / 2,
            curve: Curves.linear,
            durationMs: 400,//动画时长
            clockwise: false, //是否是顺时针
            child: Icon(Icons.arrow_upward,size: 60,color: Colors.orangeAccent,),
            onTap: () {},
          ),
          ToggleRotate(
            rad: pi / 2,
            curve: Curves.linear,
            child: Image(width:60,height: 60,image: AssetImage("assets/images/head_icon/icon_9.jpg")),
            onTap: () {},
          ),
          ToggleRotate(
            rad: pi / 4,
            curve: Curves.linear,
            child: Image(width:60,height: 60,image: AssetImage("assets/images/head_icon/icon_9.jpg")),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}