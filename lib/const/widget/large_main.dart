import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LargeMainBtn extends StatelessWidget {
  // Gradient gradient;
  final Color? color;
  final String text;
  final VoidCallback? onPressed;

  const LargeMainBtn({
    super.key,
    this.color,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 315,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Center(
          child: GradientText(text,
              style: const TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              gradientType: GradientType.linear,
              colors: const [Color(0xff9DCEFF), Color(0xff92A3FD)]),
        ),
      ),
    );
  }
}

class LargeMainBtn2 extends StatelessWidget {
  final Gradient? gradient;
  // final Color? color;
  final String text;
  final VoidCallback? onPressed;

  const LargeMainBtn2({
    super.key,
    this.gradient,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onPressed,
      child: Container(
        width: 315,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), gradient: gradient
            // color: gradient,
            ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.login_rounded,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.bold),

                // colors: Colors.white.// const [Color(0xff9DCEFF), Color(0xff92A3FD)]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
