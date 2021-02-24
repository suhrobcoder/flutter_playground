import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Playground',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Playground"),
        actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
      ),
      body: Container(
        child: Column(
          children: [
            Text("Text"),
            RaisedButton(
              onPressed: () {},
              child: Text("Button"),
            ),
            Icon(Icons.home),
            TextField(),
          ],
        ),
      ),
    );
  }
}
