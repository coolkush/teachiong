import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/profile_four_screen/models/profile_four_model.dart';

/// A provider class for the ProfileFourScreen.
///
/// This provider manages the state of the ProfileFourScreen, including the
/// current profileFourModelObj

// ignore_for_file: must_be_immutable
class ProfileFourProvider extends ChangeNotifier {
  TextEditingController myProfileController = TextEditingController();

  TextEditingController historyController = TextEditingController();

  TextEditingController helpController = TextEditingController();

  TextEditingController privacyController = TextEditingController();

  TextEditingController accountController = TextEditingController();

  ProfileFourModel profileFourModelObj = ProfileFourModel();

  @override
  void dispose() {
    super.dispose();
    myProfileController.dispose();
    historyController.dispose();
    helpController.dispose();
    privacyController.dispose();
    accountController.dispose();
  }
}
