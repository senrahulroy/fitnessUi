import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:ui_app_fitness/const/colors.dart';
import 'package:ui_app_fitness/const/routs/routesname.dart';
import 'package:ui_app_fitness/const/string.dart';
import 'package:ui_app_fitness/const/widget/large_text.dart';

import '../../const/widget/circlebtn.dart';
import '../../const/widget/svgimage.dart';

class WelcomeScreen2 extends ConsumerWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: OrientationBuilder(
          builder: ((context, orientation) =>
              orientation == Orientation.portrait
                  ? const Welcoms2protrait()
                  : const Welcoms2LandScape()),
        ),
      ),
    );
  }
}

class Welcoms2protrait extends StatelessWidget {
  const Welcoms2protrait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SvgImage(imagePath: 'assets/svg/getBurn.svg'),
        const SizedBox(height: 64),
        const LargeText(text: getburn),
        const SizedBox(height: 15),
        const SmallText(text: onBordingPagetwotxt),
        const SizedBox(height: 128),
        floatingBtn(() => Navigator.pushNamed(context, RoutsName.welcome3)),
      ],
    );
  }
}

class Welcoms2LandScape extends StatelessWidget {
  const Welcoms2LandScape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SvgImage(imagePath: 'assets/svg/getBurn.svg'),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LargeText(text: getburn),
              const SizedBox(height: 15),
              const SmallText(text: onBordingPagetwotxt),
              const SizedBox(height: 128),
              floatingBtn(
                  () => Navigator.pushNamed(context, RoutsName.welcome3)),
            ],
          ),
        ),
      ],
    );
  }
}
