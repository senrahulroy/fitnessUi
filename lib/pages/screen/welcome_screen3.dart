import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:ui_app_fitness/main_project/ui/utils/colors_rp.dart';
import 'package:ui_app_fitness/const/routs/routesname.dart';
import 'package:ui_app_fitness/const/string.dart';
import 'package:ui_app_fitness/const/widget/large_text.dart';

import '../../const/widget/circlebtn.dart';
import '../../const/widget/svgimage.dart';

class WelcomeScreen3 extends ConsumerWidget {
  const WelcomeScreen3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) =>
                orientation == Orientation.portrait
                    ? const Welcoms3protrait()
                    : const Welcoms3LandScape()),
      ),
    );
  }
}

class Welcoms3protrait extends StatelessWidget {
  const Welcoms3protrait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SvgImage(imagePath: 'assets/svg/eatWell.svg'),
        const SizedBox(height: 33),
        const LargeText(text: eatwell),
        const SizedBox(height: 15),
        const SmallText(text: onBordingPagethreetxt),
        const SizedBox(height: 128),
        floatingBtn(() => Navigator.pushNamed(context, RoutsName.welcome4)),
      ],
    );
  }
}

class Welcoms3LandScape extends StatelessWidget {
  const Welcoms3LandScape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SvgImage(imagePath: 'assets/svg/eatWell.svg'),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LargeText(text: eatwell),
              const SizedBox(height: 15),
              const SmallText(text: onBordingPagethreetxt),
              const SizedBox(height: 128),
              floatingBtn(
                  () => Navigator.pushNamed(context, RoutsName.welcome4)),
            ],
          ),
        ),
      ],
    );
  }
}
