import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

class ProfileModel {
  List<UserprofilelistItemModel> userprofilelistItemList = [
    UserprofilelistItemModel(
        drawPictureText: "Draw a picture of 5 Pet animals",
        loremIpsumText:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
        submissionDateText: "Submission date",
        submissionDateText1: "July 16, 2022",
        pendingText: "Pending",
        progressPercentageText: "88%"),
    UserprofilelistItemModel(
        drawPictureText: "Draw a picture of 5 Pet animals",
        loremIpsumText:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
        submissionDateText: "Submission date",
        submissionDateText1: "July 16, 2022",
        pendingText: "Completed",
        progressPercentageText: "100%")
  ];
}
