import 'package:flutter/material.dart';
import 'package:whatsapp_layout_app/whatsapp_widget.dart';


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
      home: WhatsAppWidget(),
    );
  }
}