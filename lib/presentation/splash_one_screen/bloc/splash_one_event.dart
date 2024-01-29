// ignore_for_file: must_be_immutable

part of 'splash_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashOneEvent extends Equatable {}

/// Event that is dispatched when the SplashOne widget is first created.
class SplashOneInitialEvent extends SplashOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends SplashOneEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
