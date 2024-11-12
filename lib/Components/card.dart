import 'package:flutter/material.dart';
import 'package:hackathon/Components/button.dart';
import 'package:hackathon/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.role,
    required this.description,
  });
  final String role;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 350,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1.5,
              blurRadius: 1.5,
              offset: Offset(0, 4),
            )
          ],
          color: kPrimaryColor,
          border: Border.all(
            width: 4,
            color: kSecondaryColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  role,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontFamily: "BagelFatOne",
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Text(
                description,
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: BigButton(text: "Choose your path"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
