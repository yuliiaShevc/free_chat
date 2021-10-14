import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libphonenumber/libphonenumber.dart';
import 'package:lottie/lottie.dart';

import '../constants/strings.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _form = new GlobalKey<FormState>();
  String _verificationText;
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Lottie.asset("assets/lottie/enter_phone.json", height: 350),
                  Text(Strings.enterPhone, style: Theme.of(context).textTheme.headline2),
                  SizedBox(height: 16.0),
                  Text(Strings.messageAuth,
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Theme.of(context).textTheme.headline4.color.withOpacity(0.8)),
                      textAlign: TextAlign.center),
                  SizedBox(height: 40.0),
                  Form(
                    key: _form,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                          controller: _controller,
                          validator: (_) => _phoneVerificationNumber(),
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (value) => _checkPhoneNumber(number: value),
                          cursorHeight: 16.0,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.auto, hintText: Strings.hintTextPhoneInput),
                          style: Theme.of(context).textTheme.caption),
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 54.0, top: 24.0),
                    child: Container(
                      height: Theme.of(context).buttonTheme.height,
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                          onPressed: () => _checkPhoneNumber(),
                          child: Text(Strings.continueBtn, style: Theme.of(context).textTheme.button)),
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<String> _phoneVerification(String number) async {
    if (number.length == 0)
      return Strings.errorEmptyMobileNumber;
    else if (!(await PhoneNumberUtil.isValidPhoneNumber(phoneNumber: number, isoCode: 'US')))
      return Strings.errorInvalidMobileNumber;
    return null;
  }

  String _phoneVerificationNumber() => _verificationText;

  void _checkPhoneNumber({String number}) async {
    _verificationText = await _phoneVerification(number ?? _controller.text);
    if (_form.currentState.validate()) return;
  }
}
