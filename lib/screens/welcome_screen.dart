import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_chat/screens/auth_screen.dart';
import 'package:lottie/lottie.dart';

import '../constants/strings.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 54.0, left: 24.0, right: 24.0),
        child: Container(
          height: Theme.of(context).buttonTheme.height,
          child: TextButton(
              onPressed: () => Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => AuthScreen(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) => Stack(
                        children: <Widget>[
                          SlideTransition(
                            position: new Tween<Offset>(
                              begin: const Offset(0.0, 0.0),
                              end: const Offset(-1.0, 0.0),
                            ).animate(animation),
                            child: this,
                          ),
                          SlideTransition(
                            position: new Tween<Offset>(
                              begin: const Offset(1.0, 0.0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          )
                        ],
                      ))),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(Strings.start, style: Theme.of(context).textTheme.button)])),
        ),
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
}
