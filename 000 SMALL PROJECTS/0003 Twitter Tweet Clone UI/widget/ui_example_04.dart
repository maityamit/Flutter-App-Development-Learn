import 'package:flutter/material.dart';


class UiExample_04 extends StatefulWidget {
  const UiExample_04({Key? key}) : super(key: key);

  @override
  _UiExample_04State createState() => _UiExample_04State();
}

class _UiExample_04State extends State<UiExample_04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tweet",style: TextStyle(fontSize: 20,color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,top: 15),
                    width: 57,
                    height: 57,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                          image: NetworkImage("https://pbs.twimg.com/profile_images/1363314604630175747/NgYBr11A_400x400.jpg")
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sahil",style: TextStyle(fontSize: 18,color: Colors.white),),
                      Text("@sahilypatel",style: TextStyle(color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15,left: 15,right: 15),
              child: Text("Elon should buy Instagram and delete reels.",style: TextStyle(fontSize: 23,color: Colors.white),),
            ),
            Container(
              margin: EdgeInsets.only(left: 15,top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("10:53 am •",style: TextStyle(color: Colors.grey),),
                  Text("17 Apr 22 •",style: TextStyle(color: Colors.grey),),
                  Text("Twitter for Android",style: TextStyle(color: Colors.blue,fontSize: 17),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("136",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                  SizedBox(
                    width: 4,
                  ),
                  Text("Retweets",style: TextStyle(color: Colors.grey,fontSize: 15),),
                  SizedBox(
                    width: 15,
                  ),
                  Text("19",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                  SizedBox(
                    width: 4,
                  ),
                  Text("Quote Tweets",style: TextStyle(color: Colors.grey,fontSize: 15),),
                  SizedBox(
                    width: 15,
                  ),
                  Text("1,986",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                  SizedBox(
                    width: 4,
                  ),
                  Text("Likes",style: TextStyle(color: Colors.grey,fontSize: 15),),
                  SizedBox(
                    width: 15,
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.format_quote_outlined,size: 32,color: Colors.grey,),
                  Icon(Icons.repeat,size: 32,color: Colors.grey),
                  Icon(Icons.favorite_border_outlined,size: 32,color: Colors.grey),
                  Icon(Icons.share,size: 32,color: Colors.grey),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15,top: 15),
                        width: 57,
                        height: 57,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                              image: NetworkImage("https://pbs.twimg.com/profile_images/1509484148398104578/UqJTZ8fn_400x400.jpg")
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Amit Maity",style: TextStyle(fontSize: 18,color: Colors.white),),
                              SizedBox(
                                width: 5,
                              ),
                              Text("@_maityamit ",style: TextStyle(color: Colors.grey),),
                              Text("• 3h",style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Replying to ",style: TextStyle(fontSize: 16,color: Colors.grey),),
                              SizedBox(
                                width: 5,
                              ),
                              Text("@sahilypatel ",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Should buy Tinder and delete all Female\nAccount 🚀",style: TextStyle(fontSize: 17,color: Colors.white),),

                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.format_quote_outlined,size: 30,color: Colors.grey,),
                        Icon(Icons.repeat,size: 30,color: Colors.grey),
                        Icon(Icons.favorite_border_outlined,size: 30,color: Colors.grey),
                        Icon(Icons.share,size: 30,color: Colors.grey),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15,top: 15),
                        width: 57,
                        height: 57,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                              image: NetworkImage("https://pbs.twimg.com/profile_images/1497918723591589888/OpS9YFCg_400x400.jpg")
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("A",style: TextStyle(fontSize: 18,color: Colors.white),),
                              SizedBox(
                                width: 5,
                              ),
                              Text("@@_Sunbeam110 ",style: TextStyle(color: Colors.grey),),
                              Text("• 2h",style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Replying to ",style: TextStyle(fontSize: 16,color: Colors.grey),),
                              SizedBox(
                                width: 5,
                              ),
                              Text("@sahilypatel ",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Musk should pay right tax and stop \nevading. Buying Twitter comes afterwards.",style: TextStyle(fontSize: 17,color: Colors.white),),

                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.format_quote_outlined,size: 30,color: Colors.grey,),
                        Icon(Icons.repeat,size: 30,color: Colors.grey),
                        Icon(Icons.favorite_border_outlined,size: 30,color: Colors.grey),
                        Icon(Icons.share,size: 30,color: Colors.grey),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15,top: 15),
                        width: 57,
                        height: 57,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                              image: NetworkImage("https://pbs.twimg.com/profile_images/1502220597748768769/AJYPZAzc_400x400.jpg")
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Prerak",style: TextStyle(fontSize: 18,color: Colors.white),),
                              SizedBox(
                                width: 5,
                              ),
                              Text("@prerak_sahu ",style: TextStyle(color: Colors.grey),),
                              Text("• 7h",style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Replying to ",style: TextStyle(fontSize: 16,color: Colors.grey),),
                              SizedBox(
                                width: 5,
                              ),
                              Text("@sahilypatel ",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("No one Literally no one\nSahil copy pasting 'joke bro' in half of \ncomments",style: TextStyle(fontSize: 17,color: Colors.white),),

                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.format_quote_outlined,size: 30,color: Colors.grey,),
                        Icon(Icons.repeat,size: 30,color: Colors.grey),
                        Icon(Icons.favorite_border_outlined,size: 30,color: Colors.grey),
                        Icon(Icons.share,size: 30,color: Colors.grey),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
