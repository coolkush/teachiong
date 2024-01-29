import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/profile_two_dialog/models/profile_two_model.dart';
part 'profile_two_event.dart';
part 'profile_two_state.dart';

/// A bloc that manages the state of a ProfileTwo according to the event that is dispatched to it.
class ProfileTwoBloc extends Bloc<ProfileTwoEvent, ProfileTwoState> {
  ProfileTwoBloc(ProfileTwoState initialState) : super(initialState) {
    on<ProfileTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileTwoInitialEvent event,
    Emitter<ProfileTwoState> emit,
  ) async {}
}
