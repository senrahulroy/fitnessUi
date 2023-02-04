import 'package:flutter/material.dart';
import 'package:ui_app_fitness/main_project/ui/utils/colors_rp.dart';

class LargeText extends StatelessWidget {
  final String text;
  const LargeText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

class LargeTextCenter extends StatelessWidget {
  final String text;
  const LargeTextCenter({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: 'Poppins', fontSize: 28, fontWeight: FontWeight.w700),
    );
  }
}

class SmallText extends StatelessWidget {
  final String text;

  const SmallText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          color: MyAppColor().appGray,
          // fontWeight: FontWeight
        ),
      ),
    );
  }
}
