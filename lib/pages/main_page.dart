import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hey_sangeet/model/sangeet.dart';
import 'package:hey_sangeet/utils/ai_utils.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Sangeet> sangeet;
  @override
  void initState() {
    super.initState();
    fetchSangeets();
  }

  fetchSangeets() async {
    final sangeetJson = await rootBundle.loadString("assets/sangeets.json");
    sangeet = SangeetList.fromJson(sangeetJson)
        .sangeets; // assigning sangeets to json map converter
    print(sangeet);
  }

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
            title: "Hey Sangeet".text.xl4.bold.white.make().shimmer(
                primaryColor: Vx.purple300, secondaryColor: Colors.white),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ).h(100).p16()
        ],
      ),
    );
  }
}
