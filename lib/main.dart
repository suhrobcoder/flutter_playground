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
            Text(
              "Text",
              style: TextStyle(color: Colors.green, fontSize: 30),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text("Raised Button"),
                  ),
                  FlatButton(onPressed: () {}, child: Text("Flat Button")),
                  OutlinedButton(
                      onPressed: () {}, child: Text("Outlined Button")),
                  TextButton(onPressed: () {}, child: Text("Text Button")),
                ],
              ),
            ),
            Icon(Icons.home),
            TextField(),
            CircularProgressIndicator(),
            BottomNavigationBar(items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
            Card(
              shadowColor: Colors.green.withAlpha(30),
              elevation: 16,
              child: InkWell(
                focusColor: Colors.blue,
                child: Container(
                  padding: EdgeInsets.all(50),
                  child: Text("Text"),
                ),
              ),
            ),
            Image.asset(
              "assets/images/3s.png",
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
