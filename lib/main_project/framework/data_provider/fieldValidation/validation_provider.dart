
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_app_fitness/main_project/framework/data_provider/fieldValidation/validation_controller.dart';

final validationProvider = ChangeNotifierProvider(
      (ref) => Validation(),
);