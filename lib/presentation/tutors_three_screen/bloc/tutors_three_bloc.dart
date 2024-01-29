import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/timerbutton_item_model.dart';
import 'package:kushagra_s_application2/presentation/tutors_three_screen/models/tutors_three_model.dart';
part 'tutors_three_event.dart';
part 'tutors_three_state.dart';

/// A bloc that manages the state of a TutorsThree according to the event that is dispatched to it.
class TutorsThreeBloc extends Bloc<TutorsThreeEvent, TutorsThreeState> {
  TutorsThreeBloc(TutorsThreeState initialState) : super(initialState) {
    on<TutorsThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TutorsThreeInitialEvent event,
    Emitter<TutorsThreeState> emit,
  ) async {
    emit(state.copyWith(
        tutorsThreeModelObj: state.tutorsThreeModelObj
            ?.copyWith(timerbuttonItemList: fillTimerbuttonItemList())));
  }

  List<TimerbuttonItemModel> fillTimerbuttonItemList() {
    return [TimerbuttonItemModel(timerText: "01:23:34")];
  }
}
