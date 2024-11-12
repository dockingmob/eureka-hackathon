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
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 1.5,
              spreadRadius: 1.5,
              offset: const Offset(0, 4),
            )
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
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionnaireButton extends StatelessWidget {
  const QuestionnaireButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 70,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: kSecondaryColor,
            width: 4,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 1.5,
              spreadRadius: 1.5,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: const Expanded(
          child: Center(
            child: Text(
              "Text will be here",
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CheckButton extends StatefulWidget {
  const CheckButton({
    super.key,
    required this.label,
  });
  final String label;

  @override
  State<CheckButton> createState() => _CheckButtonState();
}

class _CheckButtonState extends State<CheckButton> {
  bool idle = true;
  Color stroke = kSecondaryColor;
  Color fill = kPrimaryColor;

  void isIdle(bool val) {
    if (val) {
      stroke = kAccentColor;
      fill = const Color.fromARGB(255, 163, 215, 189);
    } else {
      stroke = kSecondaryColor;
      fill = kPrimaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          idle = !idle;
          isIdle(idle);
        });
      },
      child: Flexible(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: fill,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 4,
              color: stroke,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 1.5,
                  spreadRadius: 1.5,
                  offset: const Offset(0, 4))
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: Text(
              widget.label,
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
