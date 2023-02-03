import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_app_fitness/const/string.dart';

class HeyThere extends ConsumerWidget {
  const HeyThere({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
        child: Text(
      heythere,
      style: TextStyle(
          fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w500),
    ));
  }
}
