import '../models/timerbutton_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class TimerbuttonItemWidget extends StatelessWidget {
  TimerbuttonItemWidget(
    this.timerbuttonItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TimerbuttonItemModel timerbuttonItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            timerbuttonItemModelObj.timerText!,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 5.v),
          CustomElevatedButton(
            height: 32.v,
            width: 101.h,
            text: "lbl_stop".tr,
            buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
            buttonTextStyle: theme.textTheme.titleMedium!,
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
