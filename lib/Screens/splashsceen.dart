import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackathon/Components/component_test.dart';
import 'package:hackathon/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ComponentTest(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image(
          image: AssetImage("Assets/images/copy1.png"),
          width: 250,
        ),
      ),
    );
  }
}
