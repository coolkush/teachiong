// ignore_for_file: must_be_immutable

part of 'tutors_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TutorsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TutorsOneEvent extends Equatable {}

/// Event that is dispatched when the TutorsOne widget is first created.
class TutorsOneInitialEvent extends TutorsOneEvent {
  @override
  List<Object?> get props => [];
}
