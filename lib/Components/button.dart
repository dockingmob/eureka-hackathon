import 'package:flutter/material.dart';
import 'package:hackathon/constants.dart';

class BigButton extends StatelessWidget {
  const BigButton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 60,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 1.5,
                blurRadius: 7,
                offset: Offset(0, 5))
          ],
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: "Nunito",
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
