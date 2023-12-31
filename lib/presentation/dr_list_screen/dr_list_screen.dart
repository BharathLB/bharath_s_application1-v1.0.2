import '../dr_list_screen/widgets/doctorlist_item_widget.dart';
import 'package:bharath_s_application1/core/app_export.dart';
import 'package:bharath_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bharath_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:bharath_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bharath_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DrListScreen extends StatelessWidget {
  const DrListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 16.v);
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return DoctorlistItemWidget();
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Top Doctor"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgOverflowMenu,
              margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
