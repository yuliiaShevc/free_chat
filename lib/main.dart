import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';
import 'theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMyTheme(),
      darkTheme: darkMyTheme(),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
