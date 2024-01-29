// ignore_for_file: must_be_immutable

part of 'login_one_bloc.dart';

/// Represents the state of LoginOne in the application.
class LoginOneState extends Equatable {
  LoginOneState({
    this.uniqueIdvalueController,
    this.isSelectedSwitch = false,
    this.loginOneModelObj,
  });

  TextEditingController? uniqueIdvalueController;

  LoginOneModel? loginOneModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        uniqueIdvalueController,
        isSelectedSwitch,
        loginOneModelObj,
      ];
  LoginOneState copyWith({
    TextEditingController? uniqueIdvalueController,
    bool? isSelectedSwitch,
    LoginOneModel? loginOneModelObj,
  }) {
    return LoginOneState(
      uniqueIdvalueController:
          uniqueIdvalueController ?? this.uniqueIdvalueController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      loginOneModelObj: loginOneModelObj ?? this.loginOneModelObj,
    );
  }
}
