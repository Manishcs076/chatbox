import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constants/colors/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBlack,
      appBar: _appBar(),
      body: _body(context),
    );
  }
}

_body(context) {
  return Stack(
    children: [
      Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Image.asset(
            'assets/icon/icon.png',
            height: 100,
            width: 100,
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.3),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromARGB(194, 0, 0, 0),
              border: Border.all(
                color: AppColor.rediumColor,
                width: 0.5,
              ), //Border.all
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: AppColor.rediumColor,
                  offset: const Offset(
                    0.0,
                    0.0,
                  ), //Offset
                ), //BoxShadow
              ],
            ),
          ),
        ),
      )

      // Image.asset(
      //   'assets/icon/google.png',
      // ),
    ],
  );
}

_appBar() {
  return AppBar(
    automaticallyImplyLeading: false,
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
      "Welcome to ChatBox",
      style: TextStyle(
        color: AppColor.primaryTextColor,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 20,
      ),
    ),
  );
}
