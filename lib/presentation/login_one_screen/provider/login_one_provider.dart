import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/login_one_screen/models/login_one_model.dart';

/// A provider class for the LoginOneScreen.
///
/// This provider manages the state of the LoginOneScreen, including the
/// current loginOneModelObj

// ignore_for_file: must_be_immutable
class LoginOneProvider extends ChangeNotifier {
  TextEditingController uniqueIdvalueController = TextEditingController();

  LoginOneModel loginOneModelObj = LoginOneModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
    uniqueIdvalueController.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
