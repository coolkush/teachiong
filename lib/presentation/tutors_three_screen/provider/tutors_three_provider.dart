import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/tutors_three_screen/models/tutors_three_model.dart';
import '../models/timerbutton_item_model.dart';

/// A provider class for the TutorsThreeScreen.
///
/// This provider manages the state of the TutorsThreeScreen, including the
/// current tutorsThreeModelObj

// ignore_for_file: must_be_immutable
class TutorsThreeProvider extends ChangeNotifier {
  TutorsThreeModel tutorsThreeModelObj = TutorsThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
