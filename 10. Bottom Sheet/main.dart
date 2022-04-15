import 'package:flutter/material.dart';
import 'package:flutter_project_2/widget/List_Grid.dart';
import 'package:flutter_project_2/widget/alert.dart';
import 'package:flutter_project_2/widget/animated_text.dart';
import 'package:flutter_project_2/widget/bottom_sheet.dart';
import 'package:flutter_project_2/widget/button.dart';
import 'package:flutter_project_2/widget/container_size.dart';
import 'package:flutter_project_2/widget/dismissible_flutter.dart';
import 'package:flutter_project_2/widget/drawer.dart';
import 'package:flutter_project_2/widget/image.dart';
import 'package:flutter_project_2/widget/rows_cols.dart';
import 'package:flutter_project_2/widget/snackbar.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue
      ),
      home: Bottom_Sheet_Widget(),
    );
  }
}
