import 'package:fitments/screens/homeScreen/home_screen.dart';
import 'package:fitments/screens/login/login.dart';
import 'package:flutter/material.dart';

import '../../utilities/app_colors.dart';

class SplashScreenBottomPart extends StatelessWidget {
  const SplashScreenBottomPart({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height * 0.6,
        width: width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.063,
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      spreadRadius: -3,
                      blurRadius: 8,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
                child: Image.asset('assets/images/Figments.png'),
              ),
              SizedBox(
                height: height * 0.070,
              ),
              const Text(
                'EXPLORE THE POSSIBILITIES',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: height * 0.081,
              ),
              Container(
                height: 55,
                width: 245,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 8),
                      spreadRadius: -7,
                      blurRadius: 7,
                      color: Color.fromRGBO(155, 155, 155, 1),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.greenButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'EXPLORE',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
