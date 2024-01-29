import '../models/taskcompleted_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TaskcompletedItemWidget extends StatelessWidget {
  TaskcompletedItemWidget(
    this.taskcompletedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TaskcompletedItemModel taskcompletedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      width: 156.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 6.v,
                ),
                child: CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  child: CustomImageView(
                    imagePath: taskcompletedItemModelObj?.checkmark,
                  ),
                ),
              ),
              Container(
                width: 78.h,
                margin: EdgeInsets.only(left: 11.h),
                child: Text(
                  taskcompletedItemModelObj.taskText!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.23,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Text(
            taskcompletedItemModelObj.count!,
            style: theme.textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}
