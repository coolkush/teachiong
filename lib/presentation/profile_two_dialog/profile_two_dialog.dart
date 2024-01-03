import 'models/profile_two_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/custom_elevated_button.dart';
import 'provider/profile_two_provider.dart';

// ignore_for_file: must_be_immutable
class ProfileTwoDialog extends StatefulWidget {
  const ProfileTwoDialog({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileTwoDialogState createState() => ProfileTwoDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileTwoProvider(),
      child: ProfileTwoDialog(),
    );
  }
}

class ProfileTwoDialogState extends State<ProfileTwoDialog> {
  @override
  void initState() {
    super.initState();
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
          _buildDeleteAccountConfirmation(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeleteAccountConfirmation(BuildContext context) {
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
