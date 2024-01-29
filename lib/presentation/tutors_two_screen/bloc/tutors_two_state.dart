// ignore_for_file: must_be_immutable

part of 'tutors_two_bloc.dart';

/// Represents the state of TutorsTwo in the application.
class TutorsTwoState extends Equatable {
  TutorsTwoState({this.tutorsTwoModelObj});

  TutorsTwoModel? tutorsTwoModelObj;

  @override
  List<Object?> get props => [
        tutorsTwoModelObj,
      ];
  TutorsTwoState copyWith({TutorsTwoModel? tutorsTwoModelObj}) {
    return TutorsTwoState(
      tutorsTwoModelObj: tutorsTwoModelObj ?? this.tutorsTwoModelObj,
    );
  }
}
