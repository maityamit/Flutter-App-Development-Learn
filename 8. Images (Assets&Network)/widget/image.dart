import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Image"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey.shade800
              ),
            ],

            // Network Image

            // image: DecorationImage(image: NetworkImage("https://media-exp1.licdn.com/dms/image/C5603AQGT85x5LEp7hw/profile-displayphoto-shrink_800_800/0/1649595342261?e=1655337600&v=beta&t=LBpTRISmgSYUxI_oJtfVGnmpsFHuCG6MFzQaGo3a7j0",
            // ),fit: BoxFit.cover),

            // Asset Image
              image: DecorationImage(image: AssetImage("assets/my.jpg"),fit: BoxFit.cover),
                color: Colors.red ,
            borderRadius: BorderRadius.circular(20)
          ),
        ),
      )
    );
  }
}
