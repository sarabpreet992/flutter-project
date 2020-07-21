import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Awesome app',
    home: Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
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
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("hindi"),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.yellow),
                  width: 100,
                  height: 100,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Punjabi"),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.blue),
                  width: 100,
                  height: 100,
                )
              ])),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Text("Hi I am Drawer",
                    style: TextStyle(color: Colors.purple)),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("sarabpreet992@gmail.com"),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading: Icon(Icons.mic),
              title: Text("speak here"),
              subtitle: Text("speak to record"),
              trailing: Icon(Icons.check),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
