import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/profile_three_dialog/models/profile_three_model.dart';

/// A provider class for the ProfileThreeDialog.
///
/// This provider manages the state of the ProfileThreeDialog, including the
/// current profileThreeModelObj
class ProfileThreeProvider extends ChangeNotifier {
  ProfileThreeModel profileThreeModelObj = ProfileThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
