import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: width * 0.95,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://www.pngitem.com/pimgs/m/351-3510795_black-and-white-gaming-chair-hd-png-download.png',
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: ((context) {
                  return Container(
                    child: AlertDialog(
                      title: Text(
                        'Under Development',
                      ),
                      content: Text(
                        'The AR portion of this app is under development',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Okay',
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              );
            },
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 35,
                height: 45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://w7.pngwing.com/pngs/439/467/png-transparent-ar-augmented-reality-augmented-virtual-reality-technology-innovation-vr-ecommerce-online-shopping-icon.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 85,
          ),
          Container(
            width: width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.keyboard_arrow_left_outlined,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
