import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/tutors_two_screen/models/tutors_two_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the TutorsTwoScreen.
///
/// This provider manages the state of the TutorsTwoScreen, including the
/// current tutorsTwoModelObj

// ignore_for_file: must_be_immutable
class TutorsTwoProvider extends ChangeNotifier {
  TutorsTwoModel tutorsTwoModelObj = TutorsTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
