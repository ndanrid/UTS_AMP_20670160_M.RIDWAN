import 'package:flutter/material.dart';
import 'package:uts_amp_20670160_mridwan/core/app_export.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(-0.35, -0.43),
                        end: Alignment(0.67, 1.22),
                        colors: [appTheme.tealA400, appTheme.cyan800])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 32.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeftWhiteA700,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          Spacer(flex: 37),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h, right: 56.h),
                              child: Row(children: [
                                Text("HALO RIDWAN",
                                    style: theme.textTheme.headlineLarge),
                                CustomImageView(
                                    imagePath: ImageConstant.imgLink,
                                    height: 35.adaptSize,
                                    width: 35.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 4.h, top: 5.v, bottom: 3.v),
                                    onTap: () {
                                      onTapImgLink(context);
                                    })
                              ])),
                          Container(
                              width: 257.h,
                              margin: EdgeInsets.only(left: 12.h, right: 52.h),
                              child: Text("Mau perawatan apa hari ini??",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.headlineSmall!
                                      .copyWith(height: 1.15))),
                          SizedBox(height: 11.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowRightWhiteA700,
                              height: 45.adaptSize,
                              width: 45.adaptSize,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 13.h),
                              onTap: () {
                                onTapImgArrowRight(context);
                              }),
                          Spacer(flex: 62)
                        ])))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapImgLink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardContainerScreen);
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapImgArrowRight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardContainerScreen);
  }
}
