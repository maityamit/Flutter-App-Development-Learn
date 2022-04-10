import 'package:flutter/material.dart';
import 'package:flutter_project_2/widget/container_size.dart';
import 'package:flutter_project_2/widget/rows_cols.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue
      ),
      home: Rows_Cols(),
    );
  }
}
