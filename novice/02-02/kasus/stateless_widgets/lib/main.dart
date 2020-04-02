import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'My stateless widget',
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    ));

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
              title: Text(
                'I love You',
                style: TextStyle(fontSize: 20),
              ),
              icon: Icon(
                Icons.favorite,
                size: 40,
                color: Colors.redAccent,
              ),
            ),
            MyCard(
              title: Text(
                'I love travelling',
                style: TextStyle(fontSize: 20),
              ),
              icon: Icon(
                Icons.flight,
                size: 40,
                color: Colors.blue,
              ),
            ),
            MyCard(
              title: Text(
                'I love food',
                style: TextStyle(fontSize: 20),
              ),
              icon: Icon(
                Icons.restaurant,
                size: 40,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              this.title,
              this.icon,
            ],
          ),
        ),
      ),
    );
  }
}
