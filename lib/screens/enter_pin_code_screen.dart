import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:free_chat/constants/colors.dart';
import 'package:free_chat/constants/strings.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterPinCodeScreen extends StatelessWidget {
  String number;

  GlobalKey _enterCodeForm = GlobalKey();

  int lengthOfPinCode = 4;

  EnterPinCodeScreen(this.number);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(leading: InkWell(onTap: () => Navigator.pop(context), child: Icon(Icons.keyboard_arrow_left_rounded))),
      body: _buildPinCodeScreenScreen(context),
    );
  }

  CustomScrollView _buildPinCodeScreenScreen(BuildContext context) => CustomScrollView(slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Lottie.asset("assets/lottie/check_message.json", height: 350),
                  SizedBox(height: 40.0),
                  Text(Strings.enterCode, style: Theme.of(context).textTheme.headline2),
                  SizedBox(height: 16.0),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: Theme.of(context).textTheme.headline4.color.withOpacity(0.8)),
                        children: [TextSpan(text: Strings.messageEnterCode), TextSpan(text: number ?? "")],
                      )),
                  SizedBox(height: 40.0),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 32.0), child: _buildEnterCodeForm(context)),
                  Expanded(child: Container()),
                  Padding(padding: const EdgeInsets.only(bottom: 54.0, top: 24.0), child: _buildResendBtn(context))
                ])))
      ]);

  Container _buildResendBtn(BuildContext context) {
    return Container(
      height: Theme.of(context).buttonTheme.height,
      width: MediaQuery.of(context).size.width,
      child: TextButton(
          style: Theme.of(context).textButtonTheme.style.copyWith(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              backgroundColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: () => {},
          child: Text(Strings.resendCodeBtn,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Theme.of(context).brightness == Brightness.dark ? milk : blue))),
    );
  }

  Form _buildEnterCodeForm(BuildContext context) {
    Color fillColorForPinCodeInput = Theme.of(context).brightness == Brightness.dark ? textInputBgColorDark : pinCodeCircleColor;
    return Form(
      key: _enterCodeForm,
      child: PinCodeTextField(
          backgroundColor: Colors.transparent,
          cursorColor: Colors.transparent,
          enableActiveFill: true,
          textStyle: Theme.of(context).textTheme.headline1,
          keyboardType: TextInputType.number,
          animationType: AnimationType.scale,
          pinTheme: PinTheme(
              shape: PinCodeFieldShape.circle,
              fieldHeight: 50,
              fieldWidth: 40,
              inactiveColor: Colors.transparent,
              selectedColor: Theme.of(context).brightness == Brightness.dark ? Colors.white10 : Colors.black12,
              activeColor: Colors.transparent,
              inactiveFillColor: fillColorForPinCodeInput,
              selectedFillColor: fillColorForPinCodeInput,
              activeFillColor: Theme.of(context).scaffoldBackgroundColor),
          appContext: context,
          length: lengthOfPinCode,
          onChanged: (value) {},
          onCompleted: (value) {}),
    );
  }
}
