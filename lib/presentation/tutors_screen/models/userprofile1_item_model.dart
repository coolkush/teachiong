import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.drawPictureText,
    this.loremIpsumText,
    this.submissionDateText,
    this.submissionDateText1,
    this.statusText,
    this.progressText,
    this.id,
  }) {
    drawPictureText = drawPictureText ?? "Draw a picture of 5 Pet animals";
    loremIpsumText = loremIpsumText ??
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.";
    submissionDateText = submissionDateText ?? "Submission date";
    submissionDateText1 = submissionDateText1 ?? "July 16, 2022";
    statusText = statusText ?? "Pending";
    progressText = progressText ?? "88%";
    id = id ?? "";
  }

  String? drawPictureText;

  String? loremIpsumText;

  String? submissionDateText;

  String? submissionDateText1;

  String? statusText;

  String? progressText;

  String? id;
}
