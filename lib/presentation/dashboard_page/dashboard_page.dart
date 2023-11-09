import '../dashboard_page/widgets/eight_item_widget.dart';
import '../dashboard_page/widgets/rf_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:uts_amp_20670160_mridwan/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                      children: [
                        _buildThirtyOne(context),
                        SizedBox(height: 18.v),
                        _buildEight(context),
                        SizedBox(height: 27.v),
                        _buildRF(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyOne(BuildContext context) {
    return SizedBox(
      height: 195.v,
      width: 352.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 175.v,
              width: 352.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.h,
                        vertical: 21.v,
                      ),
                      decoration: AppDecoration.gradientCyanToCyan.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 46.v),
                          Text(
                            "Kata Dokter...",
                            style:
                                CustomTextStyles.titleLargeMontserratWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSmilingAsianD,
                    height: 175.v,
                    width: 154.h,
                    alignment: Alignment.centerRight,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 183.h,
                      margin: EdgeInsets.only(
                        left: 25.h,
                        bottom: 31.v,
                      ),
                      child: Text(
                        "Lakukan facial peeling rutin setiap 2 minggu sekali ya, agar wajah kamu terlihat lebih fresh.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelMediumMedium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 64.h),
                      child: Text(
                        "Muhammad Ridwan",
                        style: CustomTextStyles.labelSmallBlack900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: 52.adaptSize,
            width: 52.adaptSize,
            radius: BorderRadius.circular(
              26.h,
            ),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 9.h),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 64.h,
                top: 11.v,
              ),
              child: Text(
                "Golden Member",
                style: CustomTextStyles.montserratGray400,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAlignJustify,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 11.v,
              right: 17.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return SizedBox(
      height: 103.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 12.h,
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return EightItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRF(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 3.h,
          right: 18.h,
        ),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 23.v,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return RfItemWidget();
          },
        ),
      ),
    );
  }
}
