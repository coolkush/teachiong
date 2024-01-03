import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.gradientGrayToRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 114.v,
            child: VerticalDivider(
              width: 4.h,
              thickness: 4.v,
              indent: 6.h,
              endIndent: 79.h,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                top: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofileItemModelObj.balanceBeamText!,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 5.v),
                  SizedBox(
                    width: 296.h,
                    child: Text(
                      userprofileItemModelObj.instructionText!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallOnError.copyWith(
                        height: 1.42,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    userprofileItemModelObj.submissionDateText!,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCalendarLine1,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          userprofileItemModelObj.dateText!,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
