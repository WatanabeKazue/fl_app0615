import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _textHeader = "あなたの名前を教えてください。";
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

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
              child: Text(_textHeader, style: TextStyle(fontSize: 20.0)),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller: _textEditingController,
            ),
            Expanded(child: _imageWidget),
            SizedBox(
              height: 50.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _onClick(), //TODO ボタンのクリック処理
                child: Text(
                  "おしてね",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onClick() {
    //文字
    var inputText = _textEditingController.text;
    _textHeader = "こんにちは！$inputTextさん";
    //画像
    _imageWidget = Image.asset("assets/images/hello.png");
    setState(() {});
  }
}
