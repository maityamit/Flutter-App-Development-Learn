// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class List_Grid extends StatefulWidget {
  const List_Grid({Key? key}) : super(key: key);

  @override
  _List_GridState createState() => _List_GridState();
}

class _List_GridState extends State<List_Grid> {

  List<String> fruits = ["Orange","Orange","Onge","Orange","Orange"];
  Map fruits_person = {
    "fruits" : ["Orange","Orange","Onge","Orange","Orange"],
    "names" : ["Orange","Orange","Onge","Orange","Orange"]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List and Grid"),
        backgroundColor: Colors.red,
        elevation: 9,
      ),
      body: Container(
        // child: ListView.builder(
        //     itemCount: fruits_person["fruits"].length,
        //   itemBuilder: (context,index){
        //       return Card(child: ListTile(
        //         leading: Icon(Icons.person),
        //         title: Text(fruits_person["fruits"][index]),
        //         subtitle: Text(fruits_person["names"][index]),
        //       ),);
        //   },
        // ),




        // child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 3 ,
        //   crossAxisSpacing:20 ,
        //   mainAxisSpacing: 20
        // ),
        // children: [
        //   Card(child: Center(child: Text("Oranges")) ,),
        //   Card(child: Center(child: Text("Oranges")) ,),
        //   Card(child: Center(child: Text("Oranges")) ,),
        //   Card(child: Center(child: Text("Oranges")) ,),
        //   Card(child: Center(child: Text("Oranges")) ,)
        // ],),


        child: GridView.builder(
            itemCount: fruits.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ), itemBuilder:(context,index){
          return Card(child: Center(child: Text(fruits[index],style: TextStyle(fontSize: 25),),),);
        } ),


      ),
    );
  }
}
