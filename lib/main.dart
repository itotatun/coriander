import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_model.dart';
import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('コリアンダー'),
          ),
        body: Consumer<MainModel>(
          builder: (context, model, child) {
            return Center(
              child: Column(
               children: [
                Text(
                  model.kboyText,
                  style: TextStyle(
                   fontSize: 30,
              ),
            ),
            RaisedButton(
              child: Text('ボタン'),
                onPressed: () {
                   model.changeKboyText();
                  },
                ),
               ],
              ),
            );
          },
        ),
       ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  final items = List<String>.generate(10000, (i) => "Item $i");



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('マッ?'),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
                Container(
                  width: 160.0,
                  height: 80,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  height: 80,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  height: 80,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  height: 80,
                  color: Colors.orange,
                ),
              ],
            ),
        ),
      );
  }
}
