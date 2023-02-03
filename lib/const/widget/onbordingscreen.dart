import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_app_fitness/const/widget/svgimage.dart';
import 'large_text.dart';

class OnboardingScreen extends ConsumerWidget {
  final String svgImage;
  final String imageTitle;
  final String imageContant;

  const OnboardingScreen(this.svgImage, this.imageTitle, this.imageContant,
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SvgImage(imagePath: svgImage),
            const SizedBox(height: 64),
            LargeText(text: imageTitle),
            const SizedBox(height: 15),
            SmallText(text: imageContant),
            // const SizedBox(height: 128),
          ],
        ),
      ),
    );
  }
}
