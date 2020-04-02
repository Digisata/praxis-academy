import 'package:flutter/material.dart';

void main() => runApp(MyMaterialApp());

class MyMaterialApp extends StatelessWidget {
  final ratings = Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.star,
              color: Colors.green[500],
            ),
            Icon(
              Icons.star,
              color: Colors.green[500],
            ),
            Icon(
              Icons.star,
              color: Colors.green[500],
            ),
            Icon(
              Icons.star,
              color: Colors.black,
            ),
            Icon(
              Icons.star,
              color: Colors.black,
            ),
          ],
        ),
        Text(
          '190 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 20,
            letterSpacing: 0.5,
            fontFamily: 'Roboto',
          ),
        )
      ],
    ),
  );

  final iconList = DefaultTextStyle.merge(
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontSize: 18,
        height: 2,
        letterSpacing: 0.5,
        fontFamily: 'Roboto',
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(
                  Icons.kitchen,
                  color: Colors.green[500],
                ),
                Text('PREP'),
                Text('20 min'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.timer,
                  color: Colors.green[500],
                ),
                Text('COOK'),
                Text('70 min'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.restaurant,
                  color: Colors.green[500],
                ),
                Text('FEED'),
                Text('4 -6'),
              ],
            ),
          ],
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(child: Image.asset('images/icon.png')),
                  Expanded(flex: 2, child: Image.asset('images/icon.png')),
                  Expanded(child: Image.asset('images/icon.png')),
                ],
              ),
              ratings,
              iconList,
            ],
          ),
        )),
      ),
    );
  }
}

class MyNonMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'images/icon.png',
            width: 50,
            height: 50,
          ),
          Image.asset(
            'images/icon.png',
            width: 50,
            height: 50,
          ),
          Image.asset(
            'images/icon.png',
            width: 50,
            height: 50,
          ),
        ],
      )),
    );
  }
}
