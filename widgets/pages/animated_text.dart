import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated text"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(animatedTexts: [

              TypewriterAnimatedText('Aryan Jaiswal',textStyle: TextStyle(
                fontSize: 30,

              ),
                      speed:  Duration(milliseconds: 100)
              ),

            ],

              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              pause: Duration(milliseconds: 200),
              totalRepeatCount: 20,
            ),
            // AnimatedTextKit(animatedTexts: [
            //
            //   RotateAnimatedText('Hello',textStyle: TextStyle(
            //     fontSize: 30,
            //
            //   ),
            //
            //   ),
            //     RotateAnimatedText('World',textStyle: TextStyle(fontSize: 30))
            // ],
            //
            //   // displayFullTextOnTap: true,
            //   // stopPauseOnTap: true,
            //   // pause: Duration(milliseconds: 200),
            //   // totalRepeatCount: 20,
            // ),
            SizedBox(
              height: 50,
            ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText("Bhawishya",textStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ))
            ])
          ],
        ),
      ),
    );
  }
}
