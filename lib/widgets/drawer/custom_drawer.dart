import 'package:chat_box/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.primaryBlack, shadowColor: AppColor.rediumColor,
      elevation: 20,
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColor.primaryBlack,
              // image: const DecorationImage(
              //   image: NetworkImage(
              //       'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190710102234/download3.png'),
              //   fit: BoxFit.cover,
              // ), //DecorationImage
              // border: Border.all(
              //   color: Colors.green,
              //   width: 8,
              // ), //Border.all
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                //BoxShadow
                BoxShadow(
                  color: AppColor.rediumColor.withOpacity(0.5),
                  offset: const Offset(0.0, 0.8),
                  blurRadius: 1.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            // decoration: BoxDecoration(
            //   color: AppColor.primaryTextColor,
            // ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: AppColor.rediumColor,
                    radius: 50,
                    child: CircleAvatar(
                      backgroundColor: AppColor.primaryBlack,
                      radius: 49,
                      child: CircleAvatar(
                        backgroundColor: AppColor.rediumColor,
                        radius: 47,
                        child: CircleAvatar(
                          backgroundColor: AppColor.primaryBlack,
                          radius: 46,
                          child: Center(
                            child: IconButton(
                              icon: const Icon(
                                Icons.person,
                                color: AppColor.primaryTextColor,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'Item 1',
              style: TextStyle(
                color: AppColor.primaryTextColor,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text(
              'Item 2',
              style: TextStyle(
                color: AppColor.primaryTextColor,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
