import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_app_fitness/main_project/ui/utils/colors_rp.dart';
import 'package:ui_app_fitness/const/routs/routesname.dart';
import 'package:ui_app_fitness/const/string.dart';
import 'package:ui_app_fitness/const/widget/circularbar.dart';
import 'package:ui_app_fitness/const/widget/large_text.dart';

class WelcomeScreen4 extends ConsumerWidget {
  const WelcomeScreen4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final mediaq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              child: SvgPicture.asset(
                'assets/svg/improveSleep.svg',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 33),
            const LargeText(text: improvesleep),
            const SizedBox(height: 15),
            const SmallText(text: onBordingPagetwotxt),
            const SizedBox(height: 128),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, RoutsName.login),
                  child: Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: GradientProgressIndicator(
                        // backgroundColor: Colors.red,
                        // color: Colors.black,
                        strokeWidth: 1.75,
                        gradientColors: MyAppColor().blueColorList,
                        gradientStops: const [
                          0.0,
                          0.25,
                        ],
                        radius: 12,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: MyAppColor().blueLinear,
                          ),
                          child: const Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                            // size: 30,
                          ),
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
