import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelMediumGray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumMedium => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
      );
  // Montserrat text style
  static get montserratGray400 => TextStyle(
        color: appTheme.gray400,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).montserrat;
  static get montserratWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).montserrat;
  // Title text style
  static get titleLargeMontserratWhiteA700 =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumMontserratWhiteA700 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get montserratAlternates {
    return copyWith(
      fontFamily: 'Montserrat Alternates',
    );
  }
}
