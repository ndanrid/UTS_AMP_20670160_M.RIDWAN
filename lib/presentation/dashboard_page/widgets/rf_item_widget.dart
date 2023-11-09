import 'package:flutter/material.dart';
import 'package:uts_amp_20670160_mridwan/core/app_export.dart';

// ignore: must_be_immutable
class RfItemWidget extends StatelessWidget {
  const RfItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 155.v,
        width: 325.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(right: 5.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 29.v,
                ),
                decoration:
                    AppDecoration.gradientOnPrimaryContainerToTealCc.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder32,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RF FACE",
                      style: theme.textTheme.labelMedium,
                    ),
                    SizedBox(height: 6.v),
                    SizedBox(
                      width: 167.h,
                      child: Text(
                        "Radio frequency treatment atau biasa disebut sebagai setrika wajah adalah prosedur kecantikan non-bedah untuk mengencangkan kulit. Alat yang digunakan berbentuk tongkat kecil yang mampu menghasilkan gelombang radio.",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.montserratWhiteA700,
                      ),
                    ),
                    SizedBox(height: 10.v),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle10,
              height: 137.v,
              width: 132.h,
              radius: BorderRadius.circular(
                15.h,
              ),
              alignment: Alignment.topRight,
            ),
          ],
        ),
      ),
    );
  }
}
