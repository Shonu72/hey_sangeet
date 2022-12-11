import 'package:flutter/material.dart';
import 'package:hey_sangeet/utils/ai_utils.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(
        children: [
          VxAnimatedBox()
              .size(context.screenWidth, context.screenHeight)
              .withGradient(LinearGradient(colors: [
                AIColors.primaryColor1,
                AIColors.primaryColor2,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight))
              .make(),
          AppBar(
            title: "Hey Sangeet".text.xl4.bold.white.make(),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ).h(80).p16()
        ],
      ),
    );
  }
}
