import '../../../core/app_export.dart';
import 'eightythree_item_model.dart';

class HomeModel {
  List<EightythreeItemModel> eightythreeItemList = [
    EightythreeItemModel(
        widget: "3",
        television: ImageConstant.imgTelevision,
        physicalActivity: "Physical\nActivity"),
    EightythreeItemModel(
        widget: "1",
        television: ImageConstant.imgSettingsCyan400,
        physicalActivity: "Cognitive\nActivity")
  ];
}
