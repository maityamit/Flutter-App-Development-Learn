import 'package:flutter/material.dart';


class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
      ),
        body: Container(
          child: Center(
            child: ElevatedButton(onPressed: (){
              final snackbar  = SnackBar(
                // padding: EdgeInsets.all(10),
                action: SnackBarAction(
                  label: "Undo",
                  textColor: Colors.blue,
                  onPressed: (){},
                ),
                behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  duration: const Duration(milliseconds: 3000),
                  backgroundColor: Colors.yellow,
                  content: Text("This is a snackbar"));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            }, child: Text("Show Snackbar"),),
          ),
        ),
    );
  }
}
