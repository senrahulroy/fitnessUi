import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgImage extends StatelessWidget {
  final String imagePath;

  const SvgImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SvgPicture.asset(
        imagePath,
        fit: BoxFit.fill,
      ),
    );
  }
}
