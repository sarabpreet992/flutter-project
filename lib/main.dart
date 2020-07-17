import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Awsome app',
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Awesome app"),
        ),
        body: Container(
          child: Text("hi flutter"),
          color: Colors.green,
        ));
  }
}
