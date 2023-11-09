import 'package:flutter/material.dart';
import 'package:uts_amp_20670160_mridwan/core/app_export.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.symmetric(vertical: 89.v),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(flex: 58),
                          SizedBox(
                              height: 144.v,
                              width: 126.h,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapTxtHALOSKIN(context);
                                            },
                                            child: Text("HALO SKIN",
                                                style: CustomTextStyles
                                                    .titleLargeWhiteA700))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgHeartHandshake,
                                        height: 128.v,
                                        width: 126.h,
                                        alignment: Alignment.topCenter)
                                  ])),
                          Spacer(flex: 41),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                              height: 58.v,
                              width: 60.h,
                              onTap: () {
                                onTapImgArrowRight(context);
                              })
                        ])))));
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapTxtHALOSKIN(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapImgArrowRight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }
}
