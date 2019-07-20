import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _active = false;

  get _map => _active
      ? Expanded(
          child: AndroidView(
          viewType: 'MapView',
        ))
      : Text('Hello');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              setState(() {
                _active = !_active;
              });
            },
            child: Text('test'),
          ),
          _map
        ],
      ),
    );
  }
}
