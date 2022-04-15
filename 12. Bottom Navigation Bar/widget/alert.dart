import 'package:flutter/material.dart';


class AlertDialogeWidget extends StatelessWidget {
  const AlertDialogeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show Alert"),
          onPressed: (){
            showMyDialog(context);
          },
        ),
      ),
    );
  }
}


Future<void> showMyDialog(BuildContext context) async {
  return showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text("This is an Alert"),
      //backgroundColor: Colors.black,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text("This is a demo"),
            Text("This is Amit")
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: (){}, child: Text("Approved")),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Cancel"))
      ],
    );
  });
}
