import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/login_screen/models/login_model.dart';

/// A provider class for the LoginScreen.
///
/// This provider manages the state of the LoginScreen, including the
/// current loginModelObj

// ignore_for_file: must_be_immutable
class LoginProvider extends ChangeNotifier {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LoginModel loginModelObj = LoginModel();

  bool isShowPassword = true;

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
