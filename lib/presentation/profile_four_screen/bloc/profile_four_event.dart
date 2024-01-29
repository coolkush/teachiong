// ignore_for_file: must_be_immutable

part of 'profile_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFourEvent extends Equatable {}

/// Event that is dispatched when the ProfileFour widget is first created.
class ProfileFourInitialEvent extends ProfileFourEvent {
  @override
  List<Object?> get props => [];
}
