import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("はじめてのアプリ"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text("あなたの名前をおしえてください",style: TextStyle(fontSize:  20.0)
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 20.0),
              controller: null,//TODO 入力した文字を管理するTextEditionContorolre
            ),
            Image.asset("assets/images/hello.png"),
            width: double.infinity,
            ElevatedButton(
                onPressed: null,//TODO ボタンのクリック処理
                child: Text("おしてね",style: TextStyle(fontSize: 18.0),),
            ),
          ],
        ),
      ),
    );
  }
}