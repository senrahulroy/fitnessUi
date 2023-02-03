import 'package:ui_app_fitness/const/string.dart';

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

final List<OnBoardData> onboardList = [
  // ...onboardList.map((e) => null)
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
