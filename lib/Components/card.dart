import 'package:flutter/material.dart';
import 'package:hackathon/Components/button.dart';
import 'package:hackathon/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

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
                blurRadius: 7,
                offset: Offset(0, 5))
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
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Software Engineer:\n Front-end Developer",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "BagelFatOne",
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Text(
                "A front-end developer creates the parts of a website or app that users see and click on. They make sure it looks good and works on all devices.",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Align(
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
