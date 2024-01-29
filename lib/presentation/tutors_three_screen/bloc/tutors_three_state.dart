// ignore_for_file: must_be_immutable

part of 'tutors_three_bloc.dart';

/// Represents the state of TutorsThree in the application.
class TutorsThreeState extends Equatable {
  TutorsThreeState({this.tutorsThreeModelObj});

  TutorsThreeModel? tutorsThreeModelObj;

  @override
  List<Object?> get props => [
        tutorsThreeModelObj,
      ];
  TutorsThreeState copyWith({TutorsThreeModel? tutorsThreeModelObj}) {
    return TutorsThreeState(
      tutorsThreeModelObj: tutorsThreeModelObj ?? this.tutorsThreeModelObj,
    );
  }
}
