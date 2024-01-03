import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/help_screen/models/help_model.dart';

/// A provider class for the HelpScreen.
///
/// This provider manages the state of the HelpScreen, including the
/// current helpModelObj

// ignore_for_file: must_be_immutable
class HelpProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController queryvalueController = TextEditingController();

  HelpModel helpModelObj = HelpModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    queryvalueController.dispose();
  }
}
