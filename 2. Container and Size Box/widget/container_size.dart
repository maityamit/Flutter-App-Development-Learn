import 'package:flutter/material.dart';

// ignore: camel_case_types
class Container_Size extends StatelessWidget {
  const Container_Size({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container and Sizebox"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                )
              ]),
          child: Center(
            child: Text(
              "Hello World !",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
