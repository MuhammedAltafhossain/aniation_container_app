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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          child: AnimatedContainer(
        height: value == false ? 150 : 350,
        width: value == false ? 150 : 300,
        color: Colors.purple,
        duration: Duration(seconds: 4),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            value = !value;
          });
        },
        child: Icon(Icons.ac_unit),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
