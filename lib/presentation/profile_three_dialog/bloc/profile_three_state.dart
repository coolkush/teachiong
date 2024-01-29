// ignore_for_file: must_be_immutable

part of 'profile_three_bloc.dart';

/// Represents the state of ProfileThree in the application.
class ProfileThreeState extends Equatable {
  ProfileThreeState({this.profileThreeModelObj});

  ProfileThreeModel? profileThreeModelObj;

  @override
  List<Object?> get props => [
        profileThreeModelObj,
      ];
  ProfileThreeState copyWith({ProfileThreeModel? profileThreeModelObj}) {
    return ProfileThreeState(
      profileThreeModelObj: profileThreeModelObj ?? this.profileThreeModelObj,
    );
  }
}
