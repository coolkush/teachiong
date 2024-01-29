import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/eightythree_item_model.dart';
import 'package:kushagra_s_application2/presentation/home_screen/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      eightythreeItemList: fillEightythreeItemList(),
    )));
  }

  List<EightythreeItemModel> fillEightythreeItemList() {
    return [
      EightythreeItemModel(
          widget: "3",
          television: ImageConstant.imgTelevision,
          physicalActivity: "Physical\nActivity"),
      EightythreeItemModel(
          widget: "1",
          television: ImageConstant.imgSettingsCyan400,
          physicalActivity: "Cognitive\nActivity")
    ];
  }
}
