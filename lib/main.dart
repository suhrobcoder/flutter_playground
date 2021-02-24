import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Simple calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState(this.title);
}

class _MyHomePageState extends State<MyHomePage> {
  final String title;
  double a1;
  double a2;
  double res;

  _MyHomePageState(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                TextField(
                  onChanged: (text) {
                    a1 = double.parse(text);
                  },
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  onChanged: (text) {
                    a2 = double.parse(text);
                  },
                  keyboardType: TextInputType.number,
                )
              ],
            ),
            Row(
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      res = a1 + a2;
                    });
                  },
                  child: Text("+"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      res = a1 - a2;
                    });
                  },
                  child: Text("-"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      res = a1 * a2;
                    });
                  },
                  child: Text("*"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      res = a1 / a2;
                    });
                  },
                  child: Text("/"),
                ),
              ],
            ),
            Text(res.toString()),
          ],
        ),
      ),
    );
  }
}
