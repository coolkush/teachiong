import '../models/eightythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class EightythreeItemWidget extends StatelessWidget {
  EightythreeItemWidget(
    this.eightythreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightythreeItemModel eightythreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 23.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder11,
              ),
              child: Text(
                eightythreeItemModelObj.widget!,
                style: CustomTextStyles.labelLargeOnPrimaryContainer,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          CustomImageView(
            imagePath: eightythreeItemModelObj?.television,
            height: 80.adaptSize,
            width: 80.adaptSize,
          ),
          SizedBox(height: 19.v),
          SizedBox(
            width: 69.h,
            child: Text(
              eightythreeItemModelObj.physicalActivity!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumCyan400.copyWith(
                height: 1.38,
              ),
            ),
          ),
          SizedBox(height: 38.v),
        ],
      ),
    );
  }
}
