import 'package:flutter/material.dart';
import 'package:ui_app_fitness/main_project/ui/utils/colors_rp.dart';

Widget floatingBtn(VoidCallback onTap) => Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap:
              onTap, // () => Navigator.pushNamed(context, RoutsName.welcome2),
          child: Padding(
            padding: const EdgeInsets.only(right: 30.0),
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
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
