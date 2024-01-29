import 'bloc/profile_two_bloc.dart';
import 'models/profile_two_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProfileTwoDialog extends StatelessWidget {
  const ProfileTwoDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileTwoBloc>(
      create: (context) => ProfileTwoBloc(ProfileTwoState(
        profileTwoModelObj: ProfileTwoModel(),
      ))
        ..add(ProfileTwoInitialEvent()),
      child: ProfileTwoDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      child: Column(
        children: [
          Spacer(),
          _buildSeventyThree(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyThree(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_delete_account".tr,
            style: CustomTextStyles.titleMediumSemiBold18,
          ),
          SizedBox(height: 15.v),
          Text(
            "msg_are_you_sure_to".tr,
            style: CustomTextStyles.titleMediumBluegray900,
          ),
          SizedBox(height: 22.v),
          CustomImageView(
            imagePath: ImageConstant.imgDelete11,
            height: 50.adaptSize,
            width: 50.adaptSize,
          ),
          SizedBox(height: 25.v),
          CustomElevatedButton(
            text: "lbl_delete".tr,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 5.h,
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            "lbl_no".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
        ],
      ),
    );
  }
}
