import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_chat/screens/auth_screen.dart';

import '../constants/strings.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.transparent, elevation: 0, shadowColor: Colors.transparent),
            onPressed: () => Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => AuthScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return Stack(
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
                  );
                })),
            child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(Strings.skip, style: Theme.of(context).textTheme.button),
              SizedBox(width: 4),
              Icon(Icons.arrow_forward_ios_sharp, size: 11, color: Theme.of(context).iconTheme.color)
            ])),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/welcome_image.png")),
            Padding(
              padding: const EdgeInsets.only(top: 56.0, left: 24.0, right: 24.0, bottom: 32.0),
              child: Text(Strings.firstWelcomeMessage, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child:
                  Text(Strings.secondWelcomeMessage, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText2),
            ),
          ],
        ),
      ),
    );
  }
}
