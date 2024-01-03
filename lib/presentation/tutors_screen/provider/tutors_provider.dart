import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/tutors_screen/models/tutors_model.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/taskcompleted_item_model.dart';
import '../models/userprofile1_item_model.dart';

/// A provider class for the TutorsScreen.
///
/// This provider manages the state of the TutorsScreen, including the
/// current tutorsModelObj

// ignore_for_file: must_be_immutable
class TutorsProvider extends ChangeNotifier {
  TutorsModel tutorsModelObj = TutorsModel();

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  void dispose() {
    super.dispose();
  }
}
