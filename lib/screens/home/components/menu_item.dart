import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemMenu extends StatelessWidget {
  final String label;
  final Function() press;
  const ItemMenu({super.key, required this.label, required this.press});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          label.toUpperCase(),
          style: TextStyle(
            color: kTextColor.withOpacity(0.3),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
