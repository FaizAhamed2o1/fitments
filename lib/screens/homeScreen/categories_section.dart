import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      height: 165,
      width: 130,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(
              'https://www.ikea.com/ca/en/images/products/lerhamn-chair-black-brown-vittaryd-beige__0728160_pe736117_s5.jpg?f=s'),
          fit: BoxFit.cover,
        ),
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
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
    );
  }
}
