import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_chat/screens/auth_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import '../constants/strings.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 54.0, left: 24.0, right: 24.0),
        child: _buildStartBtn(context),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lottie/welcome_screen.json"),
            Text(Strings.firstWelcomeMessage, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline2)
          ],
        ),
      ),
    );
  }

  Container _buildStartBtn(BuildContext context) {
    return Container(
      height: Theme.of(context).buttonTheme.height,
      child: TextButton(
          onPressed: () => Navigator.push(
              context, PageTransition(type: PageTransitionType.rightToLeftJoined, child: AuthScreen(), childCurrent: this)),
          child: Text(Strings.start, style: Theme.of(context).textTheme.button)),
    );
  }
}
