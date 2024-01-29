// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [splash_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SplashOneModel extends Equatable {
  SplashOneModel({this.radioList = const []}) {}

  List<String> radioList;

  SplashOneModel copyWith({List<String>? radioList}) {
    return SplashOneModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
