import 'package:fitments/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 105,
            // color: Color(0xFFD9D9D9),
            decoration: const BoxDecoration(
              color: Color(0xFFD9D9D9),
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 4),
                  spreadRadius: -3,
                  blurRadius: 4,
                  color: Color.fromRGBO(155, 155, 155, 1),
                ),
                BoxShadow(
                  offset: Offset(-2, 4),
                  spreadRadius: -3,
                  blurRadius: 4,
                  color: Color.fromRGBO(155, 155, 155, 1),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            width: 105,
            // color: Color(0xFFD9D9D9),
            decoration: const BoxDecoration(
              color: Color(0xFFD9D9D9),
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 4),
                  spreadRadius: -3,
                  blurRadius: 4,
                  color: Color.fromRGBO(155, 155, 155, 1),
                ),
                BoxShadow(
                  offset: Offset(-2, 4),
                  spreadRadius: -3,
                  blurRadius: 4,
                  color: Color.fromRGBO(155, 155, 155, 1),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            width: 105,
            // color: Color(0xFFD9D9D9),
            decoration: const BoxDecoration(
              color: Color(0xFFD9D9D9),
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 4),
                  spreadRadius: -3,
                  blurRadius: 4,
                  color: Color.fromRGBO(155, 155, 155, 1),
                ),
                BoxShadow(
                  offset: Offset(-2, 4),
                  spreadRadius: -3,
                  blurRadius: 4,
                  color: Color.fromRGBO(155, 155, 155, 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
