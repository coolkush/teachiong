import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/profile_tab_container_screen/models/profile_tab_container_model.dart';
import 'package:table_calendar/table_calendar.dart';

/// A provider class for the ProfileTabContainerScreen.
///
/// This provider manages the state of the ProfileTabContainerScreen, including the
/// current profileTabContainerModelObj

// ignore_for_file: must_be_immutable
class ProfileTabContainerProvider extends ChangeNotifier {
  ProfileTabContainerModel profileTabContainerModelObj =
      ProfileTabContainerModel();

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
