// ignore_for_file: must_be_immutable

part of 'profile_two_bloc.dart';

/// Represents the state of ProfileTwo in the application.
class ProfileTwoState extends Equatable {
  ProfileTwoState({this.profileTwoModelObj});

  ProfileTwoModel? profileTwoModelObj;

  @override
  List<Object?> get props => [
        profileTwoModelObj,
      ];
  ProfileTwoState copyWith({ProfileTwoModel? profileTwoModelObj}) {
    return ProfileTwoState(
      profileTwoModelObj: profileTwoModelObj ?? this.profileTwoModelObj,
    );
  }
}
