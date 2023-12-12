import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skoring/components/SplashScreenC.dart';
import 'package:skoring/pages/HomePage.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(
          seconds: 3), // Sesuaikan durasi splash screen sesuai kebutuhan Anda
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
