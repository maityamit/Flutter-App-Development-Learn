import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RedBusSeatUI extends StatefulWidget {
  const RedBusSeatUI({Key? key}) : super(key: key);

  @override
  _RedBusSeatUIState createState() => _RedBusSeatUIState();
}

class _RedBusSeatUIState extends State<RedBusSeatUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Zing Bus"),
        backgroundColor: Color(0xffd44d57),

      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
                top: 200,
                left: 100,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                 child:
                 Container(
                   margin: EdgeInsets.all(12),
                   child: Column(
                     children: [
                       Row(
                         children: [

                           SizedBox(
                             width: 150,
                           ),
                           Icon(Icons.circle)
                         ],
                       ),
                       SizedBox(
                         height: 10,
                       ),
                       Row(
                         children: [
                           _Full_gents_seatLayout(),
                           _Full_gents_seatLayout(),
                           SizedBox(
                             width: 40,
                           ),
                           _Vacant_seatLayout(),
                           _Full_gents_seatLayout()
                         ],
                       ),
                       Row(
                         children: [
                           _Full_ladies_seatLayout(),
                           _Vacant_seatLayout(),
                           SizedBox(
                             width: 40,
                           ),
                           _Full_gents_seatLayout(),
                           _Full_gents_seatLayout()
                         ],
                       ),
                       Row(
                         children: [
                           _Full_ladies_seatLayout(),
                           _Vacant_seatLayout(),
                           SizedBox(
                             width: 40,
                           ),
                           _Full_gents_seatLayout(),
                           _Full_gents_seatLayout()
                         ],
                       ),
                       Row(
                         children: [
                          _Vacant_seatLayout(),
                           _Vacant_seatLayout(),
                           SizedBox(
                             width: 40,
                           ),
                           _Full_gents_seatLayout(),
                           _Vacant_seatLayout()
                         ],
                       ),
                       Row(
                         children: [
                           _Vacant_seatLayout(),
                           _Vacant_seatLayout(),
                           SizedBox(
                             width: 40,
                           ),
                           _Selected_Seat(),
                           _Full_gents_seatLayout()
                         ],
                       ),
                       Row(
                         children: [
                           _Full_ladies_seatLayout(),
                           _Vacant_seatLayout(),
                           SizedBox(
                             width: 40,
                           ),
                           _Full_gents_seatLayout(),
                           _Full_gents_seatLayout()
                         ],
                       ),
                       Row(
                         children: [
                           _Full_ladies_seatLayout(),
                           _Vacant_seatLayout(),
                           SizedBox(
                             width: 40,
                           ),
                           _Full_ladies_seatLayout(),
                           _Full_ladies_seatLayout()
                         ],
                       ),
                       Row(
                         children: [
                          _Vacant_seatLayout(),
                           _Vacant_seatLayout(),
                           SizedBox(
                             width: 40,
                           ),
                           _Full_gents_seatLayout(),
                           _Vacant_seatLayout()
                         ],
                       ),
                       Row(
                         children: [
                           _Vacant_seatLayout(),
                           _Vacant_seatLayout(),
                           _Vacant_seatLayout(),
                           _Vacant_seatLayout(),
                           _Vacant_seatLayout()
                         ],
                       )
                     ],
                   ),
                 ),
            )),

          ],
        ),
      ),
    );
  }

  Widget _Vacant_seatLayout(){
    return Container(
      width: 40,
      height: 40,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            bottom: 5,
            left: 5,
            right: 5,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                ),
              ),
            ),),
          Positioned(
            top: 29,
            bottom: 5,
            left: 5,
            right: 5,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                ),
              ),
            ),),
          Positioned(
            top: 15,
            bottom: 5,
            left: 4,
            right: 30,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                ),
              ),
            ),),
          Positioned(
            top: 15,
            bottom: 5,
            left: 30,
            right: 4,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                ),
              ),
            ),)

        ],
      ),
    );
  }
  Widget _Full_gents_seatLayout(){
    return Container(
      width: 40,
      height: 40,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            bottom: 5,
            left: 5,
            right: 5,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300
                ),
              ),
            ),),
          Positioned(
            top: 29,
            bottom: 5,
            left: 5,
            right: 5,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blueAccent
                ),
              ),
            ),),
          Positioned(
            top: 15,
            bottom: 5,
            left: 4,
            right: 30,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blueAccent
                ),
              ),
            ),),
          Positioned(
            top: 15,
            bottom: 5,
            left: 30,
            right: 4,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blueAccent
                ),
              ),
            ),)

        ],
      ),
    );
  }
  Widget _Full_ladies_seatLayout(){
    return Container(
      width: 40,
      height: 40,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            bottom: 5,
            left: 5,
            right: 5,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300
                ),
              ),
            ),),
          Positioned(
            top: 29,
            bottom: 5,
            left: 5,
            right: 5,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.cyan
                ),
              ),
            ),),
          Positioned(
            top: 15,
            bottom: 5,
            left: 4,
            right: 30,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.cyan
                ),
              ),
            ),),
          Positioned(
            top: 15,
            bottom: 5,
            left: 30,
            right: 4,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.cyan
                ),
              ),
            ),)

        ],
      ),
    );
  }
  Widget _Selected_Seat(){
    return Container(
      width: 40,
      height: 40,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            bottom: 5,
            left: 5,
            right: 5,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.lightGreenAccent
                ),
              ),
            ),),
          Positioned(
            top: 29,
            bottom: 5,
            left: 5,
            right: 5,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.lightGreenAccent
                ),
              ),
            ),),
          Positioned(
            top: 15,
            bottom: 5,
            left: 4,
            right: 30,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.lightGreenAccent
                ),
              ),
            ),),
          Positioned(
            top: 15,
            bottom: 5,
            left: 30,
            right: 4,
            child:SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.lightGreenAccent
                ),
              ),
            ),)

        ],
      ),
    );
  }

}
