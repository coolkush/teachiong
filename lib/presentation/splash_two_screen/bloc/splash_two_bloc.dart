import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/splash_two_screen/models/splash_two_model.dart';
part 'splash_two_event.dart';
part 'splash_two_state.dart';

/// A bloc that manages the state of a SplashTwo according to the event that is dispatched to it.
class SplashTwoBloc extends Bloc<SplashTwoEvent, SplashTwoState> {
  SplashTwoBloc(SplashTwoState initialState) : super(initialState) {
    on<SplashTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashTwoInitialEvent event,
    Emitter<SplashTwoState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.splashScreen,
      );
    });
  }
}
