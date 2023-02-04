import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_app_fitness/main_project/framework/data_provider/onBoarding/on_boarding_controller.dart';

final onBoardingProvider = ChangeNotifierProvider(
  (ref) => OnBoardingController(),
);
