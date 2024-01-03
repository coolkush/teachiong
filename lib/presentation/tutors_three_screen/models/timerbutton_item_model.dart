import '../../../core/app_export.dart';

/// This class is used in the [timerbutton_item_widget] screen.
class TimerbuttonItemModel {
  TimerbuttonItemModel({
    this.timerText,
    this.id,
  }) {
    timerText = timerText ?? "01:23:34";
    id = id ?? "";
  }

  String? timerText;

  String? id;
}
