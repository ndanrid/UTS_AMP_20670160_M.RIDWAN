import 'package:flutter/material.dart';
import 'package:uts_amp_20670160_mridwan/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientCyanToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.39, -0.52),
          end: Alignment(0.56, 1.14),
          colors: [
            appTheme.cyan900,
            appTheme.cyan800,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.cyan900,
            theme.colorScheme.onPrimary,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToTealCc => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.16, -0.73),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            appTheme.teal600Cc,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToTealA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.24, 1.5),
          colors: [
            theme.colorScheme.primary,
            appTheme.tealA400,
          ],
        ),
      );
  static BoxDecoration get gradientTealAToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.35, -0.43),
          end: Alignment(0.67, 1.22),
          colors: [
            appTheme.tealA400,
            appTheme.cyan800,
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder26 => BorderRadius.circular(
        26.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get roundedBorder64 => BorderRadius.circular(
        64.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
