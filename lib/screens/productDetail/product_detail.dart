import 'package:fitments/screens/productDetail/description_section.dart';
import 'package:fitments/screens/productDetail/image_section.dart';
import 'package:fitments/screens/productDetail/middle_section.dart';
import 'package:flutter/material.dart';

import '../../utilities/app_colors.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/navigation_drawer.dart';
import 'bottom_section.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.screenBackgroundColor,
      drawer: const NavigationDrawer(),
      appBar: CustomAppBar.setAppBar(AppColors.screenBackgroundColor),
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  ImageSection(
                    width: width,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MiddleSection(
                    width: width,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  DescriptionSection(
                    width: width,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
            BottomSection(width: width),
          ],
        ),
      ),
    );
  }
}
