import 'package:fitments/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Container for the profile picture and profile name
            Material(
              child: InkWell(
                splashColor: Theme.of(context).primaryColorLight,
                onTap: () {},
                child: Ink(
                  width: width,
                  color: AppColors.greenButtonColor,
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-photo/young-african-american-woman-isolated-yellow-studio-background-facial-expression-beautiful-female-half-length-portrait-concept-human-emotions-facial-expression-standing-crossing-hands_155003-25191.jpg?w=996&t=st=1675626658~exp=1675627258~hmac=31584a0dd2f136dd7d2da57d0e6e5d2551ef783ab24392efc3eb9c4963b9428c',
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Jane Doe',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'janedoe@gmail.com',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Container for the menu items
            // ignore: avoid_unnecessary_containers
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: Icon(Icons.home_outlined),
                      title: Text('Home'),
                      onTap: () {},
                    ),
                  ),
                  const Divider(
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: Icon(Icons.home_outlined),
                      title: Text('Home'),
                      onTap: () {},
                    ),
                  ),
                  const Divider(
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: Icon(Icons.home_outlined),
                      title: Text('Home'),
                      onTap: () {},
                    ),
                  ),
                  const Divider(
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: Icon(Icons.home_outlined),
                      title: Text('Home'),
                      onTap: () {},
                    ),
                  ),
                  // Divider(
                  //   color: Colors.black54,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
