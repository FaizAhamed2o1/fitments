import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.9,
      child: Column(
        children: [
          Container(
            width: width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: (width * 0.9) - 100,
                  child: const Text(
                    'GAMING CHAIR',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  child: IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.share,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: width * 0.9,
            child: Text(
              'Lorem Ipsum dolor ' * 50,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
