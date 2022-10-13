import 'package:burger_web/components/default_button.dart';
import 'package:burger_web/constants.dart';
import 'package:burger_web/screens/home/components/menu_item.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topLeft,
          ),
          const SizedBox(width: 5),
          Text(
            "Food".toUpperCase(),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          ItemMenu(
            label: "Home",
            press: () {},
          ),
          ItemMenu(
            label: "Sobre",
            press: () {},
          ),
          ItemMenu(
            label: "Preço",
            press: () {},
          ),
          ItemMenu(
            label: "Contato",
            press: () {},
          ),
          ItemMenu(
            label: "Login",
            press: () {},
          ),
          DefaultButton(
            label: "Começar",
            press: () {},
          ),
        ],
      ),
    );
  }
}
