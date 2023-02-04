import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
 import 'package:ui_app_fitness/main_project/ui/utils/colors_rp.dart';
import 'package:ui_app_fitness/const/string.dart';
import 'package:ui_app_fitness/const/widget/hey_there.dart';
import 'package:ui_app_fitness/const/widget/large_main.dart';
import 'package:ui_app_fitness/const/widget/large_text.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 40),
                const HeyThere(),
                const SizedBox(height: 10),
                const LargeTextCenter(text: 'Welcome Back'),
                const Center(
                  child: Text('Login Screen'),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.grey[300],
                    ),
                    child: const TextField(
                      // style: TextStyle(),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.grey[300],
                    ),
                    child: const TextField(
                      // style: TextStyle(),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock_outline_rounded),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Forgot your password ?',
                  style: TextStyle(
                      color: MyAppColor().appGray,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: "Popinse",
                      decoration: TextDecoration.underline),
                ),
                const SizedBox(height: 265),
                // const Expanded(flex: 1, child: SizedBox()),

              LargeMainBtn2(
                text: 'text',
                gradient: MyAppColor().blueLinear,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        height: 1,
                        width: 141,
                        color: Colors.grey[500],
                      ),
                    ),
                    // height: 20,
                    // width: 200,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Or",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Container(
                        height: 1,
                        width: 141,
                        color: Colors.grey[500],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: const [
                  LoginWith(imagePath: 'assets/svg/google.svg'),
                  SizedBox(width: 30),
                  LoginWith(imagePath: 'assets/svg/facebook.svg'),
                ],
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(dontHave),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: GradientText('Register',
                        colors: MyAppColor().purpleColorList),
                  )
                ],
              )
            ],
          ),
        ),
      ),
     ),
    );
  }
}

class LoginWith extends StatelessWidget {
  final String imagePath;
  const LoginWith({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(14),
        // color: Colors.amber,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SvgPicture.asset(
          imagePath,
          //'assets/svg/facebook.svg',
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
