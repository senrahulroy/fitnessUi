import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_app_fitness/const/routs/routes.dart';
import 'package:ui_app_fitness/const/routs/routesname.dart';
import 'package:ui_app_fitness/const/string.dart';
import 'package:ui_app_fitness/const/widget/circlebtn.dart';
import 'package:ui_app_fitness/const/widget/onbordingscreen.dart';
import 'package:ui_app_fitness/const/widget/svgimage.dart';
import 'package:ui_app_fitness/pages/model/onboard.dart';
import 'package:ui_app_fitness/pages/screen/sign_signout/login_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),

      builder: (BuildContext context, Widget? child) {

       return MaterialApp(
          debugShowCheckedModeBanner: false,
          // initialRoute: RoutsName.splash,
          // onGenerateRoute: AppRoutes.generateRoute,
          home: OnBoardingFlow(),
        );
      },

    );
  }
}

class OnBoardingFlow extends StatefulWidget {
  OnBoardingFlow({
    super.key,
  });

  @override
  State<OnBoardingFlow> createState() => _OnBoardingFlowState();
}

class _OnBoardingFlowState extends State<OnBoardingFlow> {
  late PageController pageController;
  bool lastPage = false;
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onboardList.length,
              onPageChanged: (index) {
                setState(() {
                  lastPage = (index == 3);
                });
              },
              controller: pageController,
              itemBuilder: (contextList, index) => OnboardingScreen(
                onboardList[index].imageSvg,
                onboardList[index].imagTitle,
                onboardList[index].imageContact,
              ),
            ),
          ),
          Text(lastPage.toString()),
          // Text(pageController.position.toString()),
          SizedBox(
            height: 120,
            width: double.infinity,
            child: floatingBtn(() {
              if (lastPage) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const LoginScreen();
                    },
                  ),
                );
              } else {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease);
              }
            }),
          ),
        ],
      ),
    );
  }
}
