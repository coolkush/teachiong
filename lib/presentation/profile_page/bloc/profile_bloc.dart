import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile2_item_model.dart';
import 'package:kushagra_s_application2/presentation/profile_page/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
        profileModelObj: state.profileModelObj?.copyWith(
      userprofile2ItemList: fillUserprofile2ItemList(),
    )));
  }

  List<Userprofile2ItemModel> fillUserprofile2ItemList() {
    return [
      Userprofile2ItemModel(
          drawPictureText: "Draw a picture of 5 Pet animals",
          loremIpsumText:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
          submissionDateText: "Submission date",
          submissionDateText1: "July 16, 2022",
          pendingText: "Pending",
          progressPercentageText: "88%"),
      Userprofile2ItemModel(
          drawPictureText: "Draw a picture of 5 Pet animals",
          loremIpsumText:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
          submissionDateText: "Submission date",
          submissionDateText1: "July 16, 2022",
          pendingText: "Completed",
          progressPercentageText: "100%")
    ];
  }
}
