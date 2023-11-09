import 'package:flutter/material.dart';
import 'package:uts_amp_20670160_mridwan/core/app_export.dart';
import 'package:uts_amp_20670160_mridwan/widgets/custom_elevated_button.dart';
import 'package:uts_amp_20670160_mridwan/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginTwoScreen extends StatelessWidget {
  LoginTwoScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 25.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 20.v),
                      Text("Log in", style: theme.textTheme.titleMedium),
                      SizedBox(height: 37.v),
                      SizedBox(
                          height: 144.v,
                          width: 126.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("HALO SKIN",
                                    style: theme.textTheme.titleLarge)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgHeartHandshakePrimary,
                                height: 128.v,
                                width: 126.h,
                                alignment: Alignment.topCenter)
                          ])),
                      SizedBox(height: 66.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Text("Email address",
                                  style: theme.textTheme.titleSmall))),
                      SizedBox(height: 3.v),
                      _buildEmail(context),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Text("Password",
                                  style: theme.textTheme.titleSmall))),
                      SizedBox(height: 3.v),
                      _buildTwentyNine(context),
                      SizedBox(height: 68.v),
                      _buildLogin(context),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 18.h, right: 13.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "ridwan@gmail.com",
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        width: 309.h,
        controller: passwordController,
        alignment: Alignment.center,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 21.v, 14.h, 19.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEyeoff,
                height: 15.adaptSize,
                width: 15.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 55.v));
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, top: 13.v),
        child: CustomTextFormField(
            width: 62.h,
            controller: passwordController1,
            hintText: "*********",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.topLeft,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return SizedBox(
        height: 55.v,
        width: 309.h,
        child: Stack(
            alignment: Alignment.topLeft,
            children: [_buildPassword(context), _buildPassword1(context)]));
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
        width: 213.h,
        text: "Login",
        onPressed: () {
          onTapLogin(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the welcomeScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.welcomeScreen);
  }
}
