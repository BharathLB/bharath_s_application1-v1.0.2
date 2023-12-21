import 'package:bharath_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettignsItemWidget extends StatelessWidget {
  const SettignsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocationPrimary,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          SizedBox(height: 5.v),
          Text(
            "Heart rate",
            style: CustomTextStyles.labelMediumCyan100,
          ),
          SizedBox(height: 4.v),
          Text(
            "215bpm",
            style: CustomTextStyles.titleMediumPrimary_1,
          ),
        ],
      ),
    );
  }
}
