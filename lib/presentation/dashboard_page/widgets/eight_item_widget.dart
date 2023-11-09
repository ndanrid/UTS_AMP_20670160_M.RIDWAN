import 'package:flutter/material.dart';
import 'package:uts_amp_20670160_mridwan/core/app_export.dart';

// ignore: must_be_immutable
class EightItemWidget extends StatelessWidget {
  const EightItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.gradientPrimaryToTealA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder23,
      ),
      width: 107.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: ImageConstant.imgClock1,
            height: 71.v,
            width: 72.h,
          ),
          Text(
            "Masa Downtime",
            style: theme.textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
