import 'package:bharath_s_application1/core/app_export.dart';
import 'package:bharath_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EighteenItemWidget extends StatelessWidget {
  EighteenItemWidget({
    Key? key,
    this.onTapBtnUser,
  }) : super(
          key: key,
        );

  VoidCallback? onTapBtnUser;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71.h,
      child: CustomIconButton(
        height: 71.adaptSize,
        width: 71.adaptSize,
        padding: EdgeInsets.all(16.h),
        decoration: IconButtonStyleHelper.fillCyan,
        onTap: () {
          onTapBtnUser!.call();
        },
        child: CustomImageView(
          imagePath: ImageConstant.imgUserPrimary,
        ),
      ),
    );
  }
}
