// ignore_for_file: must_be_immutable

part of 'splash_one_bloc.dart';

/// Represents the state of SplashOne in the application.
class SplashOneState extends Equatable {
  SplashOneState({
    this.radioGroup = "",
    this.splashOneModelObj,
  });

  SplashOneModel? splashOneModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        splashOneModelObj,
      ];
  SplashOneState copyWith({
    String? radioGroup,
    SplashOneModel? splashOneModelObj,
  }) {
    return SplashOneState(
      radioGroup: radioGroup ?? this.radioGroup,
      splashOneModelObj: splashOneModelObj ?? this.splashOneModelObj,
    );
  }
}
