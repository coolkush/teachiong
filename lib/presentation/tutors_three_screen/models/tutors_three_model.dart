// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'timerbutton_item_model.dart';

/// This class defines the variables used in the [tutors_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TutorsThreeModel extends Equatable {
  TutorsThreeModel({this.timerbuttonItemList = const []}) {}

  List<TimerbuttonItemModel> timerbuttonItemList;

  TutorsThreeModel copyWith({List<TimerbuttonItemModel>? timerbuttonItemList}) {
    return TutorsThreeModel(
      timerbuttonItemList: timerbuttonItemList ?? this.timerbuttonItemList,
    );
  }

  @override
  List<Object?> get props => [timerbuttonItemList];
}
