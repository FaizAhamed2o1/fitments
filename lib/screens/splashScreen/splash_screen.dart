import 'package:fitments/screens/splashScreen/splash_screen_bottom_part.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const routeName = '/splashScreen';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    // print(height);
    // print('height is $height and width is $width');
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: height * 0.45,
              width: width,
              child: Image.asset(
                'assets/images/splashScreenImage2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SplashScreenBottomPart(height: height, width: width),
          ],
        ),
      ),
    );
  }
}
