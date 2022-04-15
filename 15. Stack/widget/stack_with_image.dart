import 'package:flutter/material.dart';

class StackWithWidget extends StatelessWidget {
  const StackWithWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack with Image"),
      ),
      body: Stack(
        children: [
          Positioned(
            //top: 100,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/my.jpg"),
                fit: BoxFit.cover)
              ),
            ),
          ),
          Positioned(
            left: 100,
            top: 100,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
          )
        )
        ],
      ),
    );
  }
}
