import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon/constants.dart';

class SmallField extends StatelessWidget {
  const SmallField({
    super.key,
    required this.textController,
  });
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325,
      height: 50,
      child: TextFormField(
        controller: textController,
        decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.5),
          filled: true,
          hintText: "Hint Text",
          hintStyle: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
          ),
          label: const Text("Label"),
          labelStyle: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelStyle: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
          ),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 2,
              color: kHighlightColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 2,
              color: kHighlightColor,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
        ),
      ),
    );
  }
}

class OTPField extends StatelessWidget {
  const OTPField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.5),
          filled: true,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: kHighlightColor,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: kHighlightColor,
              width: 2,
            ),
          ),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: "Poppins",
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class BigField extends StatelessWidget {
  const BigField({super.key, required this.textController});
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 350,
      child: Expanded(
        child: TextFormField(
          controller: textController,
          maxLines: 20,
          keyboardType: TextInputType.multiline,
          style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
          ),
          decoration: InputDecoration(
            fillColor: Colors.grey.withOpacity(0.5),
            filled: true,
            hintText: "Hint Text",
            hintStyle: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 20,
            ),
            label: const Text("Label"),
            labelStyle: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                width: 4,
                color: kSecondaryColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 4,
                  color: kSecondaryColor,
                )),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            floatingLabelStyle: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kHighlightColor,
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
          ),
        ),
      ),
    );
  }
}
