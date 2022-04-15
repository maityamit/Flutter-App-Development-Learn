import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example"),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Stack(children: [
            Center(
              child: Container(
                height: 300,
                width: 300,
                color: Colors.yellow,
              ),
            ),
            Center(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                )
            ),
            Center(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                )
            )
          ],)
        ),
      ),
    );
  }
}
