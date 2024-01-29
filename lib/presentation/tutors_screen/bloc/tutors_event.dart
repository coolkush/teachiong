// ignore_for_file: must_be_immutable

part of 'tutors_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Tutors widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TutorsEvent extends Equatable {}

/// Event that is dispatched when the Tutors widget is first created.
class TutorsInitialEvent extends TutorsEvent {
  @override
  List<Object?> get props => [];
}
