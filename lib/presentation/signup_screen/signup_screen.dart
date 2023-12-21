import 'package:bharath_s_application1/core/app_export.dart';
import 'package:bharath_s_application1/widgets/custom_elevated_button.dart';
import 'package:bharath_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.cyan300,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 35.v),
                    child: Column(children: [
                      SizedBox(height: 70.v),
                      _buildPageTitle(context),
                      SizedBox(height: 29.v),
                      _buildFullName(context),
                      SizedBox(height: 8.v),
                      _buildEmail(context),
                      SizedBox(height: 8.v),
                      _buildPassword(context),
                      SizedBox(height: 8.v),
                      _buildPassword1(context),
                      SizedBox(height: 39.v),
                      _buildSignUp(context),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            onTapTxtHaveanaccount(context);
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Have an account?",
                                    style: CustomTextStyles.bodySmallPrimary_1),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "Sign In",
                                    style:
                                        CustomTextStyles.labelLargePrimaryBold)
                              ]),
                              textAlign: TextAlign.left))
                    ])))));
  }

  /// Section Widget
  Widget _buildPageTitle(BuildContext context) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgHiDocLogo42x115,
          height: 42.v,
          width: 115.h),
      SizedBox(height: 27.v),
      Text("Let’s Get Started",
          style: CustomTextStyles.titleMediumOnPrimaryContainer),
      SizedBox(height: 10.v),
      Text("Create an new account", style: CustomTextStyles.labelLargeGray50)
    ]);
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController,
        hintText: "Full Name",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Your Email",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMail,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController1,
        hintText: "Password Again",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleSmallTeal300);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtHaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
