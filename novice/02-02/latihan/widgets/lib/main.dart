
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter Example',
      debugShowCheckedModeBanner: false,
      home: Counter(),
    ));

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.list),
          tooltip: 'List Menu',
          onPressed: null,
        ),
        title: Text('Material, gestures, response'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search Everythings',
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text('FAB clicked $_counter times'),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          _increment();
        },
        child: FloatingActionButton(
          child: Icon(Icons.add),
          tooltip: 'Click me please',
          onPressed: null,
        ),
      ),
    );
  }
}