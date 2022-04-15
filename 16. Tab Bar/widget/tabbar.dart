import 'package:flutter/material.dart';


class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("WhatsApp"),
            bottom: TabBar(
              indicatorColor: Colors.red,
              indicatorWeight: 3,
              tabs: [
                Tab(icon: Icon(Icons.chat),text: "CHATS",),
                Tab(icon: Icon(Icons.chat_bubble),text: "STATUS",),
                Tab(icon: Icon(Icons.call),text: "CALLS",)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(child: Center(
                child: Text("Chats",style: TextStyle(fontSize: 20),),
              ),),
              Container(child: Center(
                child: Text("Status",style: TextStyle(fontSize: 20),),
              ),),
              Container(child: Center(
                child: Text("Calls",style: TextStyle(fontSize: 20),),
              ),)
            ],
          ),
        )
    );
  }
}
