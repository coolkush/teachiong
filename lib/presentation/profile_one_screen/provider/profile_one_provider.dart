import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/profile_one_screen/models/profile_one_model.dart';

/// A provider class for the ProfileOneScreen.
///
/// This provider manages the state of the ProfileOneScreen, including the
/// current profileOneModelObj

// ignore_for_file: must_be_immutable
class ProfileOneProvider extends ChangeNotifier {
  TextEditingController profileNameController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController kidsIdValueController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  ProfileOneModel profileOneModelObj = ProfileOneModel();

  @override
  void dispose() {
    super.dispose();
    profileNameController.dispose();
    dateOfBirthController.dispose();
    kidsIdValueController.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
  }
}
