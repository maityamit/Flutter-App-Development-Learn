import 'package:flutter/material.dart';
import 'package:flutter_project_2/widget/List_Grid.dart';
import 'package:flutter_project_2/widget/alert.dart';
import 'package:flutter_project_2/widget/dismissible_flutter.dart';
import 'package:flutter_project_2/widget/ui_example_03-a.dart';



class Botton_Nav_Redbus extends StatefulWidget {
  const Botton_Nav_Redbus({Key? key}) : super(key: key);

  @override
  State<Botton_Nav_Redbus> createState() => _Botton_NavState();
}

class _Botton_NavState extends State<Botton_Nav_Redbus> {

  int selectedIndex = 0;
  PageController pageController = PageController();
  // List<Widget> widgets = [
  //   Text("Home"),
  //   Text("Search"),
  //   Text("Settings"),
  // ];

  void OnTapped(int index){
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          UIEX03Ft(),
          Dismissible_Widget(),
          List_Grid(),
          List_Grid()
        ],
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "Bookings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.help),
              label: "Help"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "My Account")
        ],
        currentIndex: selectedIndex ,
        selectedItemColor: Color(0xffd44d57),
        unselectedItemColor: Colors.grey,
        onTap: OnTapped,
      ),
    );
  }
}
