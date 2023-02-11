import 'package:flutter/material.dart';

import '../../utilities/app_colors.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: width,
        height: 55,
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: width * 0.5,
                height: 55,
                color: Colors.black,
                child: Center(
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: width * 0.5,
                height: 55,
                color: AppColors.greenButtonColor,
                child: Center(
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
