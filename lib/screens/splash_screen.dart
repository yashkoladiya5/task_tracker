import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_tracker_app/constants/images.dart';
import 'package:task_tracker_app/constants/texts.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor("#FFFCE3"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _buildSplashScreen(),
      ),
    );
  }

  List<Widget> _buildStackWidgets() {
    return [
      Image.asset(AppImages.SPLASH_SCREEN_BG),
      _buildTitleText(),
      _buildDescriptionText(),
    ];
  }

  List<Widget> _buildSplashScreen() {
    return [Stack(children: _buildStackWidgets()), _buildForwardButton()];
  }

  Widget _buildTitleText() {
    return Positioned(
      top: height * 0.550,
      left: width * 0.200,
      child: Text(
        textAlign: TextAlign.center,
        AppTexts.splashScreenText,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }

  Widget _buildDescriptionText() {
    return Positioned(
      top: height * 0.690,
      left: width * 0.150,
      child: Text(
        textAlign: TextAlign.center,
        AppTexts.splashScreenDescriptionText,
        style: TextStyle(color: Colors.black, fontSize: 16, wordSpacing: 3),
      ),
    );
  }

  Widget _buildForwardButton() {
    return Container(
      margin: EdgeInsets.only(left: width * 0.150, top: height * 0.020),
      height: height * 0.090,
      width: width * 0.190,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomeScreen();
              },
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(image: AssetImage(AppImages.ARROW_FORWARD)),
          ),
        ),
      ),
    );
  }
}
