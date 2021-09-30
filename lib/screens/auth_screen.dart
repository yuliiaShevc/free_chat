import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';
import '../constants/strings.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(MediaQuery.of(context).platformBrightness == Brightness.light
            ? "assets/icons/Logo_light_theme.svg"
            : "assets/icons/Logo_dark_theme.svg"),
        SizedBox(height: 256),
        Container(
          height: Theme.of(context).buttonTheme.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: TextButton(onPressed: () {}, child: Text(Strings.singIn)),
        ),
        SizedBox(height: 32),
        Container(
          height: Theme.of(context).buttonTheme.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: TextButton(
              onPressed: () {},
              style: Theme.of(context).textButtonTheme.style.copyWith(backgroundColor: MaterialStateProperty.all(green)),
              child: Text(Strings.singUp)),
        )
      ])),
    );
  }
}
