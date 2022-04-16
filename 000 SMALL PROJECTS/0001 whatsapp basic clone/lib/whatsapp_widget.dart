import 'package:flutter/material.dart';

class WhatsAppWidget extends StatefulWidget {
  const WhatsAppWidget({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<WhatsAppWidget> {

  List<String> per_images = ["assets/1.jpg","assets/2.jpg","assets/3.jpg","assets/4.jpg","assets/5.jpg","assets/6.jpg","assets/7.jpg","assets/1.jpg","assets/2.jpg","assets/3.jpg","assets/4.jpg","assets/5.jpg","assets/6.jpg","assets/7.jpg"];

  Map persons_chats = {
    "person" : ["Amit Maity","Prakhar Room no 206","Ramjee","Ritwik GLB","Hello World","Abir West Bengal","Shivam Jaiswal CSE","Amit Maity","Prakhar Room no 206","Ramjee","Ritwik GLB","Hello World","Abir West Bengal","Shivam Jaiswal CSE"],
    "chats" : ["Hey dude I want to meet","Hello how are you","hope you are good","hi ! what's going on","let's do it","we can do","yahoo , we won","Hey dude I want to meet","Hello how are you","hope you are good","hi ! what's going on","let's do it","we can do","yahoo , we won"]
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075E54),
            title: Text("WhatsApp",
              style: TextStyle(
              fontSize: 22,color: Colors.white
            ),),
            bottom: TabBar(
              indicatorWeight: 2,
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.chat),text: "CHATS",),
                Tab(icon: Icon(Icons.account_box_outlined),text: "STATUS",),
                Tab(icon: Icon(Icons.call),text: "CALLS",)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: ListView.builder(
                    itemCount: persons_chats["person"].length,
                    itemBuilder: (context,index){
                      return Card(
                        elevation: 4,
                        semanticContainer: false,
                        margin: EdgeInsets.only(left: 10,right: 10,top: 6),
                        child: ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(image: AssetImage(per_images[index]),fit: BoxFit.cover),
                          ),
                        ),
                        title: Text(persons_chats["person"][index],style: TextStyle(color: Colors.black,fontSize: 17),),
                        subtitle: Text(persons_chats["chats"][index]),
                      ),);
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Card(
                        semanticContainer: true,
                        elevation: 4,
                        margin: EdgeInsets.zero,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              leading: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  image: DecorationImage(image: AssetImage("assets/my.jpg"),fit: BoxFit.cover),
                                ),
                              ),
                              title: Text("My Status",style: TextStyle(color: Colors.black,fontSize: 17),),
                              subtitle: Text("13.31"),
                            ),
                          ],
                        ),)
                    ),

                  ],
                ),
              ),
              Container(child: Center(
                child: Text("Calls",style: TextStyle(fontSize: 20),),
              ),)
            ],
          ),
        )
    );
  }
}
