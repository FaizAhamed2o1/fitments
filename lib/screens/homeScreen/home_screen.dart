import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitments/screens/homeScreen/all_products_section.dart';
import 'package:fitments/screens/homeScreen/banner_section.dart';
import 'package:fitments/screens/homeScreen/categories_section.dart';
import 'package:fitments/utilities/app_colors.dart';
import 'package:fitments/widgets/custom_appbar.dart';
import 'package:fitments/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const NavigationDrawer(),
      appBar: CustomAppBar.setAppBar(Colors.white),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            color: AppColors.screenBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.transparent,
                width: width,
                height: 200,
                child: CarouselSlider.builder(
                  itemCount: 6,
                  itemBuilder: ((context, index, realIndex) {
                    return BannerSection(width: width);
                  }),
                  options: CarouselOptions(
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 25,
                ),
                child: Text(
                  'CATEGORIES',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: width,
                height: 170,
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: ListView.separated(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return CategoriesSection();
                  }),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 0,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 25,
                ),
                child: Text(
                  'ALL PRODUCTS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                alignment: Alignment.topLeft,
                width: width,
                child: AllProductsSection(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
