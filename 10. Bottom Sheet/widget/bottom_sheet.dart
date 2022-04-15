import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom_Sheet_Widget extends StatelessWidget {
  const Bottom_Sheet_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show Bottom Sheet"),
          onPressed: (){
            showModalBottomSheet(
                backgroundColor: Colors.green,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                  topRight: Radius.circular(20))
                ),
                context: context,
                builder: (context){
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("Orange",style: TextStyle(color: Colors.black),),
                        subtitle: Text("Amit"),
                      ),
                      ListTile(
                        title: Text("Banana"),
                        subtitle: Text("Prakhar"),
                      ),
                      ListTile(
                        title: Text("Apple"),
                        subtitle: Text("Ram Jee"),
                      )

                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
