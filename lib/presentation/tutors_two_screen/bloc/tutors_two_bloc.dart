import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:kushagra_s_application2/presentation/tutors_two_screen/models/tutors_two_model.dart';
part 'tutors_two_event.dart';
part 'tutors_two_state.dart';

/// A bloc that manages the state of a TutorsTwo according to the event that is dispatched to it.
class TutorsTwoBloc extends Bloc<TutorsTwoEvent, TutorsTwoState> {
  TutorsTwoBloc(TutorsTwoState initialState) : super(initialState) {
    on<TutorsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TutorsTwoInitialEvent event,
    Emitter<TutorsTwoState> emit,
  ) async {
    emit(state.copyWith(
        tutorsTwoModelObj: state.tutorsTwoModelObj
            ?.copyWith(userprofileItemList: fillUserprofileItemList())));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          balanceBeamText: "Balance Beam",
          instructionText:
              "Try more lines at different angles, spirals, and zig-zags.",
          submissionDateText: "Submission date",
          dateText: "July 16, 2022"),
      UserprofileItemModel(
          balanceBeamText: "Dancing!",
          instructionText:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
          submissionDateText: "Submission date",
          dateText: "July 16, 2022"),
      UserprofileItemModel(
          balanceBeamText: "Headstands",
          instructionText:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
          submissionDateText: "Submission date",
          dateText: "July 16, 2022")
    ];
  }
}
