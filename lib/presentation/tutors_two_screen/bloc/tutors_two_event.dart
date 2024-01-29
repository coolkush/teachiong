// ignore_for_file: must_be_immutable

part of 'tutors_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TutorsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TutorsTwoEvent extends Equatable {}

/// Event that is dispatched when the TutorsTwo widget is first created.
class TutorsTwoInitialEvent extends TutorsTwoEvent {
  @override
  List<Object?> get props => [];
}
