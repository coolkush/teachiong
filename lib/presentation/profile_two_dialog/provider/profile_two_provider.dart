import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/profile_two_dialog/models/profile_two_model.dart';

/// A provider class for the ProfileTwoDialog.
///
/// This provider manages the state of the ProfileTwoDialog, including the
/// current profileTwoModelObj
class ProfileTwoProvider extends ChangeNotifier {
  ProfileTwoModel profileTwoModelObj = ProfileTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
