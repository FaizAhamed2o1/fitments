import 'package:fitments/screens/productDetail/product_detail.dart';
import 'package:flutter/material.dart';

class AllProductsSection extends StatelessWidget {
  const AllProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 165,
      margin: EdgeInsets.only(
        left: 20,
      ),
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
      child: Column(
        children: [
          Container(
            height: 85,
            width: 130,
            color: Colors.redAccent,
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => ProductDetails()),
                  ));
            },
            child: Text('Details'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF121111),
              minimumSize: Size(110, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          // Container(
          //   height: 165 - 85,
          //   width: 130,
          //   color: Color(0xFFD9D9D9),
          //   child: Container(
          //     width: 140,
          //     height: 40,
          //     child: ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         elevation: 0,
          //         backgroundColor: Color(0xFF121111),
          //       ),
          //       onPressed: () {},
          //       child: const Text('Press Me'),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
