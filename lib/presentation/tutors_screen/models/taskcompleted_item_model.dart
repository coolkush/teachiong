import '../../../core/app_export.dart';

/// This class is used in the [taskcompleted_item_widget] screen.
class TaskcompletedItemModel {
  TaskcompletedItemModel({
    this.checkmark,
    this.taskText,
    this.count,
    this.id,
  }) {
    checkmark = checkmark ?? ImageConstant.imgCheckmark;
    taskText = taskText ?? "Task\nCompleted";
    count = count ?? "12";
    id = id ?? "";
  }

  String? checkmark;

  String? taskText;

  String? count;

  String? id;
}
