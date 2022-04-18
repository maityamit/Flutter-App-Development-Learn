import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIEX03Ft extends StatefulWidget {
  const UIEX03Ft({Key? key}) : super(key: key);

  @override
  _UIEX03FtState createState() => _UIEX03FtState();
}

class _UIEX03FtState extends State<UIEX03Ft> {


  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffd44d57),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(child: Container(
                color: Color(0xffd44d57),
                height: 320,
                width: w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        left: 10,
                        top: 20,
                        child: Text("Bus tickets",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22),)),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(

                                  image: NetworkImage("https://play-lh.googleusercontent.com/5ZxVI65M9_yQQHgsY2f_lvSFD9E4Oqvfgxkg-E-MZwWt1M65-6HLY3twREAubQtZqqo"),fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(20)
                          ) ,
                        )),
                    Positioned(
                        top: 70,
                        child: Center(
                          child: Container(
                            alignment: Alignment.center,
                            width: w-20,
                            height: 220,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 20,
                                    left: 20,
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.business_outlined,size: 30,),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text("Enter Source",style: TextStyle(fontSize: 18,color: Colors.grey),)
                                        ],
                                      ),
                                    )),
                                Positioned(
                                    top: 60,
                                    left: 20,
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.directions_bus,size: 30,),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text("Enter Destination",style: TextStyle(fontSize: 18,color: Colors.grey),)
                                        ],
                                      ),
                                    )),
                                Positioned(
                                    top: 40,
                                    right: 20,
                                    child: Container(
                                      child: Icon(Icons.alt_route_rounded,size: 30,),
                                    )),
                                Positioned(
                                    top: 100,
                                    left: 20,
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Icon(Icons.calendar_today_outlined,size: 30,),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text("Sun, 17 Apr",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),)
                                            ],
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Row(
                                            children: [
                                              Text("Today",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text("Tomorrow",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blueAccent))
                                            ],
                                          )
                                        ],
                                      ),
                                    )),
                                Positioned(
                                    top: 150,
                                    left: 20,
                                    right: 20,
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Color(0xffd44d57),
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Center(
                                          child: Text("SEARCH",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),)
                                      ),
                                    )
                                )
                              ],
                            ),

                          ),
                        )),
                  ],
                ),
              ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text("You Can Also Book",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Container(
                  width: 100,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Icon(Icons.bus_alert,color: Color(0xffd44d57),size: 40,),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Cab/Bus Hire",style: TextStyle(fontSize: 16,color: Colors.grey),)
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Container(
                  width: 100,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Icon(Icons.train,color: Color(0xffd44d57),size: 40,),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Red Rail",style: TextStyle(fontSize: 16,color: Colors.grey),)
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 20),
            child: Text("Return Trip",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: w-20,
            height: 70,
            child: Card(

              elevation: 5,
              child: Container(
                width: 20,
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Jamnagar to Rajkot",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){}, child: Text("Book Now",style: TextStyle(fontSize: 15)))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
