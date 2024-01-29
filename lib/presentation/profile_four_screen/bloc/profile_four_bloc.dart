import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/profile_four_screen/models/profile_four_model.dart';
part 'profile_four_event.dart';
part 'profile_four_state.dart';

/// A bloc that manages the state of a ProfileFour according to the event that is dispatched to it.
class ProfileFourBloc extends Bloc<ProfileFourEvent, ProfileFourState> {
  ProfileFourBloc(ProfileFourState initialState) : super(initialState) {
    on<ProfileFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFourInitialEvent event,
    Emitter<ProfileFourState> emit,
  ) async {
    emit(state.copyWith(
        myProfileController: TextEditingController(),
        historyController: TextEditingController(),
        helpController: TextEditingController(),
        privacyController: TextEditingController(),
        accountController: TextEditingController()));
  }
}
