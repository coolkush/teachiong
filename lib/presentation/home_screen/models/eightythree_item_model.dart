import '../../../core/app_export.dart';

/// This class is used in the [eightythree_item_widget] screen.
class EightythreeItemModel {
  EightythreeItemModel({
    this.widget,
    this.television,
    this.physicalActivity,
    this.id,
  }) {
    widget = widget ?? "3";
    television = television ?? ImageConstant.imgTelevision;
    physicalActivity = physicalActivity ?? "Physical\nActivity";
    id = id ?? "";
  }

  String? widget;

  String? television;

  String? physicalActivity;

  String? id;
}
