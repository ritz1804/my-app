import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Magic 8 ball'),
          backgroundColor: Colors.blue,
        ),
        body: MagicPage(),
      ),
    )
  );
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {

  int pageNumber=1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  pageNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$pageNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
