import 'package:flutter/material.dart';
import 'package:flutter_project_2/widget/List_Grid.dart';
import 'package:flutter_project_2/widget/alert.dart';
import 'package:flutter_project_2/widget/dismissible_flutter.dart';



class Botton_Nav extends StatefulWidget {
  const Botton_Nav({Key? key}) : super(key: key);

  @override
  State<Botton_Nav> createState() => _Botton_NavState();
}

class _Botton_NavState extends State<Botton_Nav> {

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
          AlertDialogeWidget(),
          Dismissible_Widget(),
          List_Grid()
        ],
      ) , 
      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings")
        ],
        currentIndex: selectedIndex ,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: OnTapped,
      ),
    );
  }
}
