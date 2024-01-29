// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.phoneNumberController,
    this.passwordController,
    this.isShowPassword = true,
    this.isSelectedSwitch = false,
    this.loginModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  LoginModel? loginModelObj;

  bool isShowPassword;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        phoneNumberController,
        passwordController,
        isShowPassword,
        isSelectedSwitch,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? isSelectedSwitch,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
