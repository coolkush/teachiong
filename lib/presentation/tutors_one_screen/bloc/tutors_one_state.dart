// ignore_for_file: must_be_immutable

part of 'tutors_one_bloc.dart';

/// Represents the state of TutorsOne in the application.
class TutorsOneState extends Equatable {
  TutorsOneState({this.tutorsOneModelObj});

  TutorsOneModel? tutorsOneModelObj;

  @override
  List<Object?> get props => [
        tutorsOneModelObj,
      ];
  TutorsOneState copyWith({TutorsOneModel? tutorsOneModelObj}) {
    return TutorsOneState(
      tutorsOneModelObj: tutorsOneModelObj ?? this.tutorsOneModelObj,
    );
  }
}
