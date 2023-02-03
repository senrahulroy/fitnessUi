import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_app_fitness/const/colors.dart';
import 'package:ui_app_fitness/const/routs/routesname.dart';
import 'package:ui_app_fitness/const/string.dart';
import 'package:ui_app_fitness/const/widget/large_text.dart';

import '../../const/widget/circlebtn.dart';
import '../../const/widget/svgimage.dart';
// import 'package:ui_app_fitness/main.dart';

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) =>
              orientation == Orientation.portrait
                  ? const Welcoms1protrait()
                  : const Welcoms1LandScape(),
        ),
      ),
    );
  }
}

class Welcoms1protrait extends StatelessWidget {
  const Welcoms1protrait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SvgImage(imagePath: 'assets/svg/trackYouGoal.svg'),
        const SizedBox(height: 64),
        const LargeText(text: trackyourgoal),
        const SizedBox(height: 15),
        const SmallText(text: onBordingPageonetxt),
        const SizedBox(height: 128),
        floatingBtn(() => Navigator.pushNamed(context, RoutsName.welcome2)),
      ],
    );
  }
}

class Welcoms1LandScape extends StatelessWidget {
  const Welcoms1LandScape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SvgImage(imagePath: 'assets/svg/trackYouGoal.svg'),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LargeText(text: trackyourgoal),
              const SizedBox(height: 15),
              const SmallText(text: onBordingPageonetxt),
              const SizedBox(height: 128),
              floatingBtn(
                  () => Navigator.pushNamed(context, RoutsName.welcome2)),
            ],
          ),
        ),
      ],
    );
  }
}
