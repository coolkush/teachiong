// ignore_for_file: must_be_immutable

part of 'profile_one_bloc.dart';

/// Represents the state of ProfileOne in the application.
class ProfileOneState extends Equatable {
  ProfileOneState({
    this.nameController,
    this.dateOfBirthController,
    this.kidsIdvalueController,
    this.nameController1,
    this.emailController,
    this.phoneNumberController,
    this.profileOneModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? kidsIdvalueController;

  TextEditingController? nameController1;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  ProfileOneModel? profileOneModelObj;

  @override
  List<Object?> get props => [
        nameController,
        dateOfBirthController,
        kidsIdvalueController,
        nameController1,
        emailController,
        phoneNumberController,
        profileOneModelObj,
      ];
  ProfileOneState copyWith({
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? kidsIdvalueController,
    TextEditingController? nameController1,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    ProfileOneModel? profileOneModelObj,
  }) {
    return ProfileOneState(
      nameController: nameController ?? this.nameController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      kidsIdvalueController:
          kidsIdvalueController ?? this.kidsIdvalueController,
      nameController1: nameController1 ?? this.nameController1,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      profileOneModelObj: profileOneModelObj ?? this.profileOneModelObj,
    );
  }
}
