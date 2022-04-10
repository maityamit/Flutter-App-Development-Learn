import 'package:flutter/material.dart';

class Button_Widget extends StatelessWidget {
  const Button_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                overlayColor: MaterialStateProperty.all(Colors.green),
                elevation: MaterialStateProperty.all(8),
                backgroundColor: MaterialStateProperty.all(Colors.yellow)
              ),
              child: Text("Press Me",style: TextStyle(fontSize: 20 , color: Colors.black),),
              onPressed: () {} ,
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
                  ),
                  child: Text("Elevated Button",style: TextStyle(fontSize: 20 , color: Colors.white),),
                  onPressed: (){},
                )
            )
          ],
        ),
      ),
    );
  }
}
