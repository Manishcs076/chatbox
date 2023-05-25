import 'package:chat_box/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../../widgets/drawer/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      backgroundColor: AppColor.primaryBlack,
      appBar: _appBar(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.person_add,
          ),
        ),
      ),
    );
  }
}

_appBar() {
  return AppBar(
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: IconButton(
          icon: const Icon(
            Icons.search,
            color: AppColor.primaryTextColor,
          ),
          tooltip: 'Search',
          onPressed: () {},
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_vert,
          color: AppColor.primaryTextColor,
        ),
      ),
    ],
    // automaticallyImplyLeading: true,
    leading: Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            icon: const Icon(
              Icons.person,
              color: AppColor.primaryTextColor,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        );
      },
    ),
    centerTitle: true,
    elevation: 10,
    backgroundColor: AppColor.primaryBlack,
    shadowColor: AppColor.rediumColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.elliptical(
          800,
          3000,
        ),
        bottomLeft: Radius.elliptical(
          800,
          3000,
        ),
      ),
    ),
    title: Text(
      "ChatBox",
      style: TextStyle(
        color: AppColor.primaryTextColor,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 20,
      ),
    ),
  );
}
