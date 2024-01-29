import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/splash_one_screen/models/splash_one_model.dart';
part 'splash_one_event.dart';
part 'splash_one_state.dart';

/// A bloc that manages the state of a SplashOne according to the event that is dispatched to it.
class SplashOneBloc extends Bloc<SplashOneEvent, SplashOneState> {
  SplashOneBloc(SplashOneState initialState) : super(initialState) {
    on<SplashOneInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<SplashOneState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<String> fillRadioList() {
    return [
      "lbl_admin",
      "msg_governor_governess",
      "lbl_parent",
      "lbl_children"
    ];
  }

  _onInitialize(
    SplashOneInitialEvent event,
    Emitter<SplashOneState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
    emit(state.copyWith(
        splashOneModelObj: state.splashOneModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
