import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

// Link : https://pub.dev/packages/animated_text_kit


class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(animatedTexts: [
              TypewriterAnimatedText("Amit Maity",textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  speed: Duration(milliseconds: 200))

            ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 50),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,),

            AnimatedTextKit(animatedTexts: [
              RotateAnimatedText("Amit Maity",textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red))

            ],
              // totalRepeatCount: 4,
              // pause: Duration(milliseconds: 50),
              // displayFullTextOnTap: true,
              // stopPauseOnTap: true,
            ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText("Amit Maity",textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red))

            ],
              // totalRepeatCount: 4,
              // pause: Duration(milliseconds: 50),
              // displayFullTextOnTap: true,
              // stopPauseOnTap: true,
            )
          ],

        ),
      )
    );
  }
}
