import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../main_project/ui/utils/colors_rp.dart';
import '../../../const/routs/routesname.dart';
import '../../../const/string.dart';
import '../../../const/widget/large_main.dart';

class BuildPortrait extends StatelessWidget {
  const BuildPortrait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 360),
            appMainName(),
            const SizedBox(height: 15),
            Text(
              everybody,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: MyAppColor().appGray,
                  fontSize: 20),
            ),
            const SizedBox(height: 271),
            // Container(
            //   width: 315,
            //   height: 60,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(50),
            //     // color: MyAppColor().appWhite,
            //   ),
            //   child: Center(
            //       child: ShaderMask(
            //     shaderCallback: (Rect rect) => const LinearGradient(
            //       colors: [
            //         Colors.pink,
            //         Colors.yellow,
            //       ],
            //     ).createShader(rect),
            //     child: const Text(
            //       'Gest Started',
            //       style: TextStyle(
            //         fontSize: 16,
            //         fontFamily: 'Poppins',
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   )),
            // ),
            LargeMainBtn(
              onPressed: () {
                Navigator.pushNamed(context, RoutsName.welcome1);
                // print('pressed');
              },
              text: 'Get Started',
              color: MyAppColor().appWhite,
            ),
            const SizedBox(height: 40)
          ],
        ),
      ],
    );
  }
}

Widget appMainName() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Textfitnest(),
        SizedBox(width: 1),
        XDesign(),
      ],
    );

class XDesign extends StatelessWidget {
  const XDesign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Text(
        "X",
        style: TextStyle(
          fontSize: 36,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 3
            ..color = Colors.black,
        ),
      ),
      Text(
        "X",
        style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 36,
          color: MyAppColor().appWhite,
          shadows: const [
            Shadow(
              color: Colors.black45,
              blurRadius: 10,
              offset: Offset(4.0, 4.0),
            )
          ],
        ),
      ),
    ]);
  }
}

class Textfitnest extends ConsumerWidget {
  const Textfitnest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      "Fitnest",
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: 36,
        color: MyAppColor().appBlack,
        shadows: const [
          Shadow(
            color: Colors.black45,
            blurRadius: 10,
            offset: Offset(2.0, 2.0),
          )
        ],
      ),
    );
  }
}
