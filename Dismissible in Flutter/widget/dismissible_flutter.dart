import 'package:flutter/material.dart';


class Dismissible_Widget extends StatefulWidget {
  const Dismissible_Widget ({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Dismissible_Widget> {
  List<String> fruits = ["Orange","Apple","Mango","Grapes","Bananan"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible Widget"),
    ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context,index){
          final fruit = fruits[index];
          return Dismissible(
            onDismissed: (direction){
              if(direction==DismissDirection.startToEnd){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(fruits[index]),backgroundColor: Colors.yellow,)
                );
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(fruits[index]),backgroundColor: Colors.green,)
                );
              }
            },
              key: Key(fruit),
              background: Container(color: Colors.red,),
              secondaryBackground: Container(color: Colors.green,),
              child: Card(
                  child: ListTile(
                    title: Text(fruits[index]),
                  )
              )
          );
        },
      ),
    );
  }
}

