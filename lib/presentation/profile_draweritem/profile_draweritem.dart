import 'package:flutter/material.dart';
import 'package:uts_amp_20670160_mridwan/core/app_export.dart';

class ProfileDraweritem extends StatelessWidget {
  const ProfileDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: Container(
            width: 235.h,
            padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 80.v),
            decoration: AppDecoration.gradientCyanToOnPrimary,
            child: Column(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse1129x129,
                  height: 129.adaptSize,
                  width: 129.adaptSize,
                  radius: BorderRadius.circular(64.h),
                  onTap: () {
                    onTapImgCircleImage(context);
                  }),
              SizedBox(height: 4.v),
              Text("Golden Member", style: CustomTextStyles.labelMediumGray400),
              SizedBox(height: 4.v),
              Text("Muhammad Ridwan",
                  style: CustomTextStyles.titleMediumMontserratWhiteA700),
              SizedBox(height: 52.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgUserCircle,
                    height: 37.v,
                    width: 39.h),
                Padding(
                    padding: EdgeInsets.only(left: 6.h, top: 9.v, bottom: 5.v),
                    child: Text("Profile",
                        style: CustomTextStyles.titleMediumMontserratWhiteA700))
              ]),
              SizedBox(height: 22.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 41.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgLayoutPanelLeft,
                                height: 39.v,
                                width: 37.h,
                                onTap: () {
                                  onTapImgLayoutPanelLeft(context);
                                }),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtDashboard(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 8.h, top: 8.v, bottom: 8.v),
                                    child: Text("Dashboard",
                                        style: CustomTextStyles
                                            .titleMediumMontserratWhiteA700)))
                          ]))),
              SizedBox(height: 22.v)
            ])));
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapImgCircleImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardContainerScreen);
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapImgLayoutPanelLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardContainerScreen);
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapTxtDashboard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardContainerScreen);
  }
}
