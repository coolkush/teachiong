// ignore_for_file: must_be_immutable

part of 'profile_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThreeEvent extends Equatable {}

/// Event that is dispatched when the ProfileThree widget is first created.
class ProfileThreeInitialEvent extends ProfileThreeEvent {
  @override
  List<Object?> get props => [];
}
