import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_app_fitness/main_project/framework/data_provider/onBoarding/data_provider.dart';
import 'package:ui_app_fitness/main_project/ui/utils/circlebtn_rp.dart';
import 'package:ui_app_fitness/main_project/ui/utils/large_text_rp.dart';
import 'package:ui_app_fitness/main_project/ui/utils/svgimage_rp.dart';
import 'package:ui_app_fitness/pages/screen/sign_signout/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final onBoardingWatch = ref.watch(onBoardingProvider);
          // onBoardingWatch.clearProvider();
          return Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: onBoardingWatch.onboardList.length,
                  onPageChanged: (index) {
                    onBoardingWatch.onPageChange(index);
                  },
                  controller: onBoardingWatch.pageController,
                  itemBuilder: (contextList, index) => onBoardingScreen(
                    onBoardingWatch.onboardList[index].imageSvg,
                    onBoardingWatch.onboardList[index].imagTitle,
                    onBoardingWatch.onboardList[index].imageContact,
                  ),
                ),
              ),
              Text(onBoardingWatch.lastPage.toString()),
              // Text(onBoardingWatch.),
              // Text(onBoardingWatch.pageController.position.toString()),
              SizedBox(
                height: 120.h,
                width: double.infinity,
                child: floatingBtn(() {
                  if (onBoardingWatch.lastPage) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const LoginScreen();
                        },
                      ),
                    );
                  } else {
                    onBoardingWatch.updatePage();
                  }
                }),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget onBoardingScreen(
          String svgImage, String imageTitle, String imageContent) =>
      Column(
        children: [
          SvgImage(imagePath: svgImage),
          SizedBox(height: 64.h),
          LargeText(text: imageTitle),
          SizedBox(height: 15.h),
          SmallText(text: imageContent),
          // const SizedBox(height: 128),
        ],
      );
}
