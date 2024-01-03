import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/tutors_one_screen/models/tutors_one_model.dart';

/// A provider class for the TutorsOneScreen.
///
/// This provider manages the state of the TutorsOneScreen, including the
/// current tutorsOneModelObj

// ignore_for_file: must_be_immutable
class TutorsOneProvider extends ChangeNotifier {
  TutorsOneModel tutorsOneModelObj = TutorsOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
