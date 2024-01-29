// ignore_for_file: must_be_immutable

part of 'profile_four_bloc.dart';

/// Represents the state of ProfileFour in the application.
class ProfileFourState extends Equatable {
  ProfileFourState({
    this.myProfileController,
    this.historyController,
    this.helpController,
    this.privacyController,
    this.accountController,
    this.profileFourModelObj,
  });

  TextEditingController? myProfileController;

  TextEditingController? historyController;

  TextEditingController? helpController;

  TextEditingController? privacyController;

  TextEditingController? accountController;

  ProfileFourModel? profileFourModelObj;

  @override
  List<Object?> get props => [
        myProfileController,
        historyController,
        helpController,
        privacyController,
        accountController,
        profileFourModelObj,
      ];
  ProfileFourState copyWith({
    TextEditingController? myProfileController,
    TextEditingController? historyController,
    TextEditingController? helpController,
    TextEditingController? privacyController,
    TextEditingController? accountController,
    ProfileFourModel? profileFourModelObj,
  }) {
    return ProfileFourState(
      myProfileController: myProfileController ?? this.myProfileController,
      historyController: historyController ?? this.historyController,
      helpController: helpController ?? this.helpController,
      privacyController: privacyController ?? this.privacyController,
      accountController: accountController ?? this.accountController,
      profileFourModelObj: profileFourModelObj ?? this.profileFourModelObj,
    );
  }
}
