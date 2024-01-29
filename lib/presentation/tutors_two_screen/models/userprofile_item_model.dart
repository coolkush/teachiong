import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.balanceBeamText,
    this.instructionText,
    this.submissionDateText,
    this.dateText,
    this.id,
  }) {
    balanceBeamText = balanceBeamText ?? "Balance Beam";
    instructionText = instructionText ??
        "Try more lines at different angles, spirals, and zig-zags.";
    submissionDateText = submissionDateText ?? "Submission date";
    dateText = dateText ?? "July 16, 2022";
    id = id ?? "";
  }

  String? balanceBeamText;

  String? instructionText;

  String? submissionDateText;

  String? dateText;

  String? id;
}
