import 'package:burger_web/constants.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String label;
  final Function() press;
  const DefaultButton({
    Key? key,
    required this.label,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle textButtonStyle = TextButton.styleFrom(
      backgroundColor: kPrimaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
    );
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        style: textButtonStyle,
        onPressed: press,
        child: Text(
          label.toUpperCase(),
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
