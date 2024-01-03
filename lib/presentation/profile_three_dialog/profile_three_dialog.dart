import 'models/profile_three_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/custom_elevated_button.dart';
import 'provider/profile_three_provider.dart';

// ignore_for_file: must_be_immutable
class ProfileThreeDialog extends StatefulWidget {
  const ProfileThreeDialog({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileThreeDialogState createState() => ProfileThreeDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileThreeProvider(),
      child: ProfileThreeDialog(),
    );
  }
}

class ProfileThreeDialogState extends State<ProfileThreeDialog> {
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
          _buildProfileThreeColumn(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileThreeColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "lbl_logout_account".tr,
            style: CustomTextStyles.titleMediumSemiBold18,
          ),
          SizedBox(height: 12.v),
          Text(
            "msg_are_you_sure_to2".tr,
            style: CustomTextStyles.titleMediumBluegray900,
          ),
          SizedBox(height: 22.v),
          CustomImageView(
            imagePath: ImageConstant.imgLogout11,
            height: 45.adaptSize,
            width: 45.adaptSize,
          ),
          SizedBox(height: 30.v),
          CustomElevatedButton(
            text: "lbl_logout".tr,
            margin: EdgeInsets.only(
              left: 10.h,
              right: 9.h,
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
