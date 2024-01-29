// ignore_for_file: must_be_immutable

part of 'profile_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwo widget is first created.
class ProfileTwoInitialEvent extends ProfileTwoEvent {
  @override
  List<Object?> get props => [];
}
