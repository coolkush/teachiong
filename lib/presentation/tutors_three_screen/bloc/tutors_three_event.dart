// ignore_for_file: must_be_immutable

part of 'tutors_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TutorsThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TutorsThreeEvent extends Equatable {}

/// Event that is dispatched when the TutorsThree widget is first created.
class TutorsThreeInitialEvent extends TutorsThreeEvent {
  @override
  List<Object?> get props => [];
}
