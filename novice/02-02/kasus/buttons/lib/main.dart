import 'package:flutter/material.dart';

void main() => runApp(MyButton());

class   MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> strings = ['FLutter', 'is', 'awokawok'];
  String displayedString = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Button',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  displayedString,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                ),
                RaisedButton(
                  child: Text(
                    'Touch me!',
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                  color: Colors.red,
                  onPressed: onPressed,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressed() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 2 ? counter + 1 : 0;
    });
  }
}
