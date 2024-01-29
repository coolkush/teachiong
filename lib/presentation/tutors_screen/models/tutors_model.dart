// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'taskcompleted_item_model.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [tutors_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TutorsModel extends Equatable {
  TutorsModel({
    this.taskcompletedItemList = const [],
    this.userprofile1ItemList = const [],
  }) {}

  List<TaskcompletedItemModel> taskcompletedItemList;

  List<Userprofile1ItemModel> userprofile1ItemList;

  TutorsModel copyWith({
    List<TaskcompletedItemModel>? taskcompletedItemList,
    List<Userprofile1ItemModel>? userprofile1ItemList,
  }) {
    return TutorsModel(
      taskcompletedItemList:
          taskcompletedItemList ?? this.taskcompletedItemList,
      userprofile1ItemList: userprofile1ItemList ?? this.userprofile1ItemList,
    );
  }

  @override
  List<Object?> get props => [taskcompletedItemList, userprofile1ItemList];
}
