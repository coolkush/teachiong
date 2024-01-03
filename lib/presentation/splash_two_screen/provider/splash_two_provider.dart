import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/splash_two_screen/models/splash_two_model.dart';

/// A provider class for the SplashTwoScreen.
///
/// This provider manages the state of the SplashTwoScreen, including the
/// current splashTwoModelObj

// ignore_for_file: must_be_immutable
class SplashTwoProvider extends ChangeNotifier {
  SplashTwoModel splashTwoModelObj = SplashTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
