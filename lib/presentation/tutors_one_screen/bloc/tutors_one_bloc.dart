import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/tutors_one_screen/models/tutors_one_model.dart';
part 'tutors_one_event.dart';
part 'tutors_one_state.dart';

/// A bloc that manages the state of a TutorsOne according to the event that is dispatched to it.
class TutorsOneBloc extends Bloc<TutorsOneEvent, TutorsOneState> {
  TutorsOneBloc(TutorsOneState initialState) : super(initialState) {
    on<TutorsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TutorsOneInitialEvent event,
    Emitter<TutorsOneState> emit,
  ) async {}
}
