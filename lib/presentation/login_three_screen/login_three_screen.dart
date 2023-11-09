import 'package:flutter/material.dart';
import 'package:uts_amp_20670160_mridwan/core/app_export.dart';
import 'package:uts_amp_20670160_mridwan/widgets/custom_elevated_button.dart';
import 'package:uts_amp_20670160_mridwan/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginThreeScreen extends StatelessWidget {
  LoginThreeScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                      Padding(
                          padding: EdgeInsets.only(left: 18.h, right: 13.h),
                          child: CustomTextFormField(
                              controller: emailController,
                              hintText: "ridwan@gmail.com",
                              textInputType: TextInputType.emailAddress)),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Text("Password",
                                  style: theme.textTheme.titleSmall))),
                      SizedBox(height: 3.v),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h, right: 13.h),
                          child: CustomTextFormField(
                              controller: passwordController,
                              hintText: "qwerty123",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 22.v, 11.h, 18.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgEye,
                                      height: 15.v,
                                      width: 16.h)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 55.v),
                              obscureText: true,
                              contentPadding: EdgeInsets.only(
                                  left: 9.h, top: 17.v, bottom: 17.v))),
                      SizedBox(height: 68.v),
                      CustomElevatedButton(
                          width: 213.h,
                          text: "Login",
                          onPressed: () {
                            onTapLogin(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
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
