// ignore_for_file: must_be_immutable

part of 'profile_tab_container_bloc.dart';

/// Represents the state of ProfileTabContainer in the application.
class ProfileTabContainerState extends Equatable {
  ProfileTabContainerState({
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.profileTabContainerModelObj,
  });

  ProfileTabContainerModel? profileTabContainerModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode;

  @override
  List<Object?> get props => [
        rangeStart,
        rangeEnd,
        selectedDay,
        focusedDay,
        rangeSelectionMode,
        profileTabContainerModelObj,
      ];
  ProfileTabContainerState copyWith({
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    ProfileTabContainerModel? profileTabContainerModelObj,
  }) {
    return ProfileTabContainerState(
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      profileTabContainerModelObj:
          profileTabContainerModelObj ?? this.profileTabContainerModelObj,
    );
  }
}
