// ignore_for_file: must_be_immutable

part of 'help_bloc.dart';

/// Represents the state of Help in the application.
class HelpState extends Equatable {
  HelpState({
    this.emailController,
    this.queryvalueController,
    this.helpModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? queryvalueController;

  HelpModel? helpModelObj;

  @override
  List<Object?> get props => [
        emailController,
        queryvalueController,
        helpModelObj,
      ];
  HelpState copyWith({
    TextEditingController? emailController,
    TextEditingController? queryvalueController,
    HelpModel? helpModelObj,
  }) {
    return HelpState(
      emailController: emailController ?? this.emailController,
      queryvalueController: queryvalueController ?? this.queryvalueController,
      helpModelObj: helpModelObj ?? this.helpModelObj,
    );
  }
}
