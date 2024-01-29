import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/profile_three_dialog/models/profile_three_model.dart';
part 'profile_three_event.dart';
part 'profile_three_state.dart';

/// A bloc that manages the state of a ProfileThree according to the event that is dispatched to it.
class ProfileThreeBloc extends Bloc<ProfileThreeEvent, ProfileThreeState> {
  ProfileThreeBloc(ProfileThreeState initialState) : super(initialState) {
    on<ProfileThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileThreeInitialEvent event,
    Emitter<ProfileThreeState> emit,
  ) async {}
}
