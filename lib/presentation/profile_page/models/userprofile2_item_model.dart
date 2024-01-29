import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.drawPictureText,
    this.loremIpsumText,
    this.submissionDateText,
    this.submissionDateText1,
    this.pendingText,
    this.progressPercentageText,
    this.id,
  }) {
    drawPictureText = drawPictureText ?? "Draw a picture of 5 Pet animals";
    loremIpsumText = loremIpsumText ??
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.";
    submissionDateText = submissionDateText ?? "Submission date";
    submissionDateText1 = submissionDateText1 ?? "July 16, 2022";
    pendingText = pendingText ?? "Pending";
    progressPercentageText = progressPercentageText ?? "88%";
    id = id ?? "";
  }

  String? drawPictureText;

  String? loremIpsumText;

  String? submissionDateText;

  String? submissionDateText1;

  String? pendingText;

  String? progressPercentageText;

  String? id;
}
