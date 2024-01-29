import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/taskcompleted_item_model.dart';
import '../models/userprofile1_item_model.dart';
import 'package:kushagra_s_application2/presentation/tutors_screen/models/tutors_model.dart';
part 'tutors_event.dart';
part 'tutors_state.dart';

/// A bloc that manages the state of a Tutors according to the event that is dispatched to it.
class TutorsBloc extends Bloc<TutorsEvent, TutorsState> {
  TutorsBloc(TutorsState initialState) : super(initialState) {
    on<TutorsInitialEvent>(_onInitialize);
  }

  List<TaskcompletedItemModel> fillTaskcompletedItemList() {
    return [
      TaskcompletedItemModel(
          checkmark: ImageConstant.imgCheckmark,
          taskText: "Task\nCompleted",
          count: "12"),
      TaskcompletedItemModel(
          checkmark: ImageConstant.imgStopwatch, taskText: "Time Duration")
    ];
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          drawPictureText: "Draw a picture of 5 Pet animals",
          loremIpsumText:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
          submissionDateText: "Submission date",
          submissionDateText1: "July 16, 2022",
          statusText: "Pending",
          progressText: "88%"),
      Userprofile1ItemModel(
          drawPictureText: "Draw a picture of 5 Pet animals",
          loremIpsumText:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
          submissionDateText: "Submission date",
          submissionDateText1: "July 16, 2022",
          statusText: "Completed",
          progressText: "100%"),
      Userprofile1ItemModel(
          drawPictureText: "Draw a picture of 5 Pet animals",
          loremIpsumText:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
          submissionDateText: "Submission date",
          submissionDateText1: "July 16, 2022",
          statusText: "Completed",
          progressText: "88%")
    ];
  }

  _onInitialize(
    TutorsInitialEvent event,
    Emitter<TutorsState> emit,
  ) async {
    emit(state.copyWith(rangeSelectionMode: RangeSelectionMode.toggledOn));
    emit(state.copyWith(
        tutorsModelObj: state.tutorsModelObj?.copyWith(
            taskcompletedItemList: fillTaskcompletedItemList(),
            userprofile1ItemList: fillUserprofile1ItemList())));
  }
}
