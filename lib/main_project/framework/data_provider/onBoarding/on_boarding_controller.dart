import 'package:flutter/material.dart';
import 'package:ui_app_fitness/main_project/ui/utils/string_rp.dart';

class OnBoardingController extends ChangeNotifier {
  bool lastPage = false;
  PageController pageController = PageController(initialPage: 0);

  clearProvider() {
    lastPage = false;
    pageController = PageController(initialPage: 0);
    notifyListeners();
  }

  updatePage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
    String   name = pageController.position as String;
    notifyListeners();
  }

  onPageChange(int index){
    lastPage = (index == 3);
    notifyListeners();
  }

  onpageIndex(int index){
    index = onboardList.length;
    notifyListeners();
  }
  List<OnBoardData> onboardList = [
    OnBoardData(
        imageSvg: trackyourgoalSvg,
        imagTitle: trackyourgoal,
        imageContact: onBordingPageonetxt),
    OnBoardData(
        imageSvg: getburnSvg,
        imagTitle: getburn,
        imageContact: onBordingPagetwotxt),
    OnBoardData(
        imageSvg: eatwellSvg,
        imagTitle: eatwell,
        imageContact: onBordingPagethreetxt),
    OnBoardData(
        imageSvg: improvesleepSvg,
        imagTitle: improvesleep,
        imageContact: onBordingPagefourtxt),
  ];
}

class OnBoardData {
  final String imageSvg;
  final String imagTitle;
  final String imageContact;

  OnBoardData({
    required this.imageSvg,
    required this.imagTitle,
    required this.imageContact,
  });
}
