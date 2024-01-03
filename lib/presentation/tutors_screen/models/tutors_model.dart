import '../../../core/app_export.dart';
import 'taskcompleted_item_model.dart';
import 'userprofile1_item_model.dart';

class TutorsModel {
  List<TaskcompletedItemModel> taskcompletedItemList = [
    TaskcompletedItemModel(
        checkmark: ImageConstant.imgCheckmark,
        taskText: "Task\nCompleted",
        count: "12"),
    TaskcompletedItemModel(
        checkmark: ImageConstant.imgStopwatch, taskText: "Time Duration")
  ];

  List<Userprofile1ItemModel> userprofile1ItemList = [
    Userprofile1ItemModel(
        drawPictureText: "Draw a picture of 5 Pet animals",
        loremIpsumText:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
        submissionDateText: "Submission date",
        submissionDateText1: "July 16, 2022",
        statusText: "Pending",
        progressText: "88%"),
    Userprofile1ItemModel(
        drawPictureText: "Draw a picture of 5 Pet animals",
        loremIpsumText:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
        submissionDateText: "Submission date",
        submissionDateText1: "July 16, 2022",
        statusText: "Completed",
        progressText: "100%"),
    Userprofile1ItemModel(
        drawPictureText: "Draw a picture of 5 Pet animals",
        loremIpsumText:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
        submissionDateText: "Submission date",
        submissionDateText1: "July 16, 2022",
        statusText: "Completed",
        progressText: "88%")
  ];
}
