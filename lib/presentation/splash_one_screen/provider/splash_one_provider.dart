import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/splash_one_screen/models/splash_one_model.dart';

/// A provider class for the SplashOneScreen.
///
/// This provider manages the state of the SplashOneScreen, including the
/// current splashOneModelObj
class SplashOneProvider extends ChangeNotifier {
  SplashOneModel splashOneModelObj = SplashOneModel();

  String radioGroup = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeRadioButton1(String value) {
    radioGroup = value;
    notifyListeners();
  }
}
