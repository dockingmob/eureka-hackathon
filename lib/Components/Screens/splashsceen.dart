import 'package:flutter/material.dart';
import 'package:hackathon/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image(
          image: AssetImage("lib/Assets/Imags/copy1.png"),
        ),
      ),
    );
  }
}
