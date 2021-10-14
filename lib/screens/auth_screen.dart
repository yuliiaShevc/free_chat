import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/strings.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _phoneVerified = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(leading: InkWell(onTap: () => Navigator.pop(context), child: Icon(Icons.keyboard_arrow_left_rounded))),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Lottie.asset("assets/lottie/enter_phone.json", height: 350),
                Text(Strings.enterPhone, style: Theme.of(context).textTheme.headline2),
                SizedBox(height: 40.0),
                Container(
                  height: Theme.of(context).buttonTheme.height,
                  width: MediaQuery.of(context).size.width - 48.0,
                  child: TextField(
                      cursorHeight: 16.0,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.auto, hintText: Strings.hintTextPhoneInput),
                      style: Theme.of(context).textTheme.caption),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 54.0, top: 24.0),
                  child: Container(
                    height: Theme.of(context).buttonTheme.height,
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                        onPressed: () => setState(() => _phoneVerified = true),
                        child: Text(Strings.continueBtn, style: Theme.of(context).textTheme.button)),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
