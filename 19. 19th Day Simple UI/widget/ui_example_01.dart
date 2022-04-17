import 'package:flutter/material.dart';
import 'package:flutter_project_2/widget/image_picker.dart';

class Day19UI extends StatefulWidget {
  const Day19UI({Key? key}) : super(key: key);

  @override
  _Day19UIState createState() => _Day19UIState();
}

class _Day19UIState extends State<Day19UI> {


  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                      height: 500,
                     // color: Colors.yellow,
                      child: Stack(
                        children: [
                          Positioned(
                              child: Container(
                                decoration: BoxDecoration(
                                  //color: Colors.red,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage("https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwZm9vZCUyMHN0b3JlfGVufDB8fDB8fA%3D%3D&w=1000&q=80")
                                  )
                                ),
                                height: 450,
                              )
                          ),
                          Positioned(
                              top: 70,
                              right: 28,
                              child: Icon(Icons.favorite_border_outlined)
                          ),
                          Positioned(
                              top: 70,
                              left: 28,
                              child: Icon(Icons.arrow_back)
                          ),
                          Positioned(
                             bottom: 0,
                              right: 24,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage("https://media-exp1.licdn.com/dms/image/C5603AQGT85x5LEp7hw/profile-displayphoto-shrink_400_400/0/1649595342261?e=1655942400&v=beta&t=Apxi_KsOzPv_kT8jkasSQ9EUjNYV4e0XfbAT4L0jFV0"),
                              )
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
            Container(
                //color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Madet City Tour for Designers",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("This is a random description of the topic",
                      style: TextStyle(
                          fontSize: 15,color: Colors.grey),
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          rowIconText("20", Icons.favorite_rounded),
                          rowIconText("10", Icons.upload),
                          rowIconText("30", Icons.message),
                          rowIconText("80", Icons.face)
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text,IconData icon){
    return Row(
      children: [
        Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(
          width: 10,
        ),
        Icon(icon)
      ],
    );
  }
}
