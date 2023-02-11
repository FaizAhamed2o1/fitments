import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  final double width;
  const BannerSection({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width * 0.85,
        height: 160,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          image: DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
