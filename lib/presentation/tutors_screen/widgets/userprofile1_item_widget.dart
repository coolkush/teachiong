import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 22.v),
      decoration: AppDecoration.gradientGrayToRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 63.v,
                  child: VerticalDivider(
                    width: 4.h,
                    thickness: 4.v,
                    endIndent: 34.h,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      top: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userprofile1ItemModelObj.drawPictureText!,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 4.v),
                        SizedBox(
                          width: 308.h,
                          child: Text(
                            userprofile1ItemModelObj.loremIpsumText!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallOnError.copyWith(
                              height: 1.42,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofile1ItemModelObj.submissionDateText!,
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
                            userprofile1ItemModelObj.submissionDateText1!,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18.v),
                    Container(
                      width: 65.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Text(
                        userprofile1ItemModelObj.statusText!,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 75.adaptSize,
                  width: 75.adaptSize,
                  margin: EdgeInsets.only(top: 2.v),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          userprofile1ItemModelObj.progressText!,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 75.adaptSize,
                          width: 75.adaptSize,
                          child: CircularProgressIndicator(
                            value: 0.5,
                            backgroundColor: theme
                                .colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            color: appTheme.amber90001,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
