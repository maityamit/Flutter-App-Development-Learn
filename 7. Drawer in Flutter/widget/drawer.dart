import 'package:flutter/material.dart';

class Drawer_Widget extends StatefulWidget {
  const Drawer_Widget({Key? key}) : super(key: key);

  @override
  _Drawer_WidgetState createState() => _Drawer_WidgetState();
}

class _Drawer_WidgetState extends State<Drawer_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(radius: 40,
                      backgroundImage: NetworkImage("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F13%2F2015%2F04%2F05%2Ffeatured.jpg&q=60"),),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Amit Maity",style: TextStyle(fontSize: 20),),
                        Text("maityamit308@gmail.com")
                      ],)

                    ],
                  ),
                ),
              ),
              ListTile(leading: Icon(Icons.folder),
              title: Text("My Files"),),
              ListTile(leading: Icon(Icons.group),
                title: Text("My Files"),),
              ListTile(leading: Icon(Icons.share),
                title: Text("My Files"),),
              ListTile(leading: Icon(Icons.upload_sharp),
                title: Text("Uploads"),),
              Divider(),
              ListTile(leading: Icon(Icons.folder),
                title: Text("My Files"),)
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer Widget"),
      ),
      body: Container(
        child: Center(
          child: Text("Hey There"),
        ),
      ),
    );
  }
}
