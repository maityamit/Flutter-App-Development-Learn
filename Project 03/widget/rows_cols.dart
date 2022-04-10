import 'package:flutter/material.dart';

class Rows_Cols extends StatelessWidget {
  const Rows_Cols({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Rows and Columns"),),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                color: Colors.red,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.green,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.blue,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.black,
              )
            ],
          ),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //   Container(
        //     height: 60,
        //     width: 60,
        //     color: Colors.red,
        //   ),
        //   Container(
        //     height: 60,
        //     width: 60,
        //     color: Colors.green,
        //   ),
        //   Container(
        //     height: 60,
        //     width: 60,
        //     color: Colors.blue,
        //   ),
        //   Container(
        //     height: 60,
        //     width: 60,
        //     color: Colors.black,
        //   )
        // ],)
      ),
    );
  }
}
