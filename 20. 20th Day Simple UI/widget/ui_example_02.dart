import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class UIEXAmple20Day extends StatefulWidget {
  const UIEXAmple20Day({Key? key}) : super(key: key);

  @override
  _UIEXAmple20DayState createState() => _UIEXAmple20DayState();
}

class _UIEXAmple20DayState extends State<UIEXAmple20Day> {


  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 15,top: 15),
                    child: Text("amit_maity_2003",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ),
                Container(
                  margin: EdgeInsets.only(right: 15,top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_box_outlined,size: 33,color: Colors.black,),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.menu,size: 35,color: Colors.black,)
                    ],
                  ),
                )

              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15,top: 15),
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 3,
                              color: Colors.orange
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                              image: NetworkImage("https://avatars.githubusercontent.com/u/74618071?v=4")
                          ),
                        ),
                      )
                    ],
                  ),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Column(
                      children: [
                        Text("135",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                        Text("Posts",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Text("171",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                        Text("Followers",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Text("184",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                        Text("Following",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    )
                  ],
                )
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20,top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Amit Maity",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 7,
                  ),
                  Text("👨‍💻 CSE Undergrad | 18 |",style: TextStyle(fontSize: 15)),
                  Text("🤐 irregular on Insta",style: TextStyle(fontSize: 15)),
                  Text("🙃 LinkedIn Profile PE jao 🥲👇",style: TextStyle(fontSize: 15)),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'linkedin.com/in/maityamit',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {

                              Fluttertoast.showToast(
                                  msg: "linkedin.com/in/maityamit",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );
                            }),
                    ]),
                  ),
                ],
              )
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 3,
                              color: Colors.cyanAccent
                          ),
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                              image: NetworkImage("https://instagram.fdel11-2.fna.fbcdn.net/v/t51.2885-15/273669019_4740095462755518_7366621361474719244_n.webp?stp=c0.420.1080.1080a_dst-jpg_e35_s150x150&_nc_ht=instagram.fdel11-2.fna.fbcdn.net&_nc_cat=106&_nc_ohc=6lsGqOiqqDUAX_V0Ml9&edm=ANmP7GQBAAAA&ccb=7-4&oh=00_AT-LQK9eItp6-CVUVHp4UFrd_57-1TTIVhNzQF07yUWz3w&oe=625EA19D&_nc_sid=276363")
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Traveling")
                    ],
                  ),

                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 3,
                              color: Colors.orange
                          ),
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                              image: NetworkImage("https://instagram.fdel11-2.fna.fbcdn.net/v/t51.2885-15/272801382_263371755925204_7151276267244709091_n.webp?stp=c0.420.1080.1080a_dst-jpg_e35_s150x150&_nc_ht=instagram.fdel11-2.fna.fbcdn.net&_nc_cat=104&_nc_ohc=w8Ms1TBBeKwAX99f_Jj&tn=oiSBlktS6qx_usOD&edm=ANmP7GQBAAAA&ccb=7-4&oh=00_AT-Juvud19jwD2HTdlKFmu41lmjZBsG70AJmIm7StnlFEg&oe=625E6969&_nc_sid=276363")
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Some Special")
                    ],
                  ),

                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 3,
                              color: Colors.yellow
                          ),
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                              image: NetworkImage("https://instagram.fdel11-2.fna.fbcdn.net/v/t51.2885-15/263265765_1244265556059845_8545142196522598564_n.jpg?stp=c0.420.1080.1080a_dst-jpg_e35_s150x150&_nc_ht=instagram.fdel11-2.fna.fbcdn.net&_nc_cat=105&_nc_ohc=SPTOjrZOVYcAX8_cYMN&edm=ANmP7GQBAAAA&ccb=7-4&oh=00_AT8DNKthp2QfV4CdIfVVziddsLYEgVGYMx8FXsU-K9FncQ&oe=625ECEAD&_nc_sid=276363")
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("First Year")
                    ],
                  ),

                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 3,
                              color: Colors.red
                          ),
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                              image: NetworkImage("https://instagram.fdel11-2.fna.fbcdn.net/v/t51.2885-15/272003146_326452572692026_5176224149378092094_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fdel11-2.fna.fbcdn.net&_nc_cat=110&_nc_ohc=MKdm5yGVs4AAX8T6ZxJ&edm=ANmP7GQBAAAA&ccb=7-4&oh=00_AT8s7n70ZEXT5g4fgWIVxqEncw2Diro9HemOPv7Y8e1uUA&oe=62631803&_nc_sid=276363")
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("LeetCode")
                    ],
                  ),

                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 3,
                              color: Colors.blue
                          ),
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                              image: NetworkImage("https://instagram.fdel11-2.fna.fbcdn.net/v/t51.2885-15/226206850_205753348045109_3008692744087582046_n.jpg?stp=c0.247.640.640a_dst-jpg_e15_s150x150&_nc_ht=instagram.fdel11-2.fna.fbcdn.net&_nc_cat=105&_nc_ohc=gChdfzUrdcYAX9zw9GT&edm=ANmP7GQBAAAA&ccb=7-4&oh=00_AT__xY2EzjlxiFEg53FySISDiamubsLR6ERr4vi0wNAxSQ&oe=625EE188&_nc_sid=276363")
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Freinds")
                    ],
                  ),

                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.grid_on,color: Colors.black,size: 32,),
                Icon(Icons.video_collection_rounded,color: Colors.grey,size: 30),
                Icon(Icons.play_circle_fill_outlined,color: Colors.grey,size: 30),
                Icon(Icons.perm_contact_calendar_outlined,color: Colors.grey,size: 30)
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  alignment: Alignment.topLeft,
                  width: 100,
                  height: 3,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage("assets/my.jpg"),width: w/3,height: w/3,fit: BoxFit.cover),
                Image(image: AssetImage("assets/my.jpg"),width: w/3,height: w/3,fit: BoxFit.cover),
                Image(image: AssetImage("assets/my.jpg"),width: w/3,height: w/3,fit: BoxFit.cover)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage("assets/my.jpg"),width: w/3,height: w/3,fit: BoxFit.cover),
                Image(image: AssetImage("assets/my.jpg"),width: w/3,height: w/3,fit: BoxFit.cover),
                Image(image: AssetImage("assets/my.jpg"),width: w/3,height: w/3,fit: BoxFit.cover)
              ],
            ),

          ],
        ),
      ),

    );
  }



}
