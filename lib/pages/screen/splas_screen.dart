import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_app_fitness/const/colors.dart';
import 'package:ui_app_fitness/const/routs/routesname.dart';
import 'package:ui_app_fitness/const/string.dart';
import 'package:ui_app_fitness/pages/screen/portraitscreen/splasportrait.dart';
import '../../const/widget/large_main.dart';
import 'landscapescreen/splaslandscape.dart';

// import '../../const/widget/large_main.dart';

class SplasScreen extends ConsumerWidget {
  const SplasScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      // backgroundColor: Colors.deepOrangeAccent,
      body: SplasScreenAll(),
    );
  }
}

class SplasScreenAll extends StatelessWidget {
  const SplasScreenAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: MyAppColor().blueLinear,
      ),
      child: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) =>
            orientation == Orientation.portrait
                ? const BuildPortrait()
                : const BuildLandScape(),

        // child: BuildPortrait(),
      ),
    );
  }
}
