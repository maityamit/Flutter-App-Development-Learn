// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

//Main Method
void main(){
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.light,
        accentColor: Colors.red
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  String mytext = "Hello World";

  void _ChangeText(){
    setState(() {
      if(mytext.startsWith("H")){
        mytext = "Welcome to my App";
      }else{
        mytext = "Hello World";
      }

    });
  }

  Widget _bodyWidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(mytext , style: new TextStyle(
              fontSize: 22.0,
            ),),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _ChangeText,
        child: new Icon(Icons.add),
      ),
    );
  }
}



