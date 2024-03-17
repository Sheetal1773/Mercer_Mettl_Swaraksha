import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOpenSansBlack90001 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
      );
  static get bodyLargeOpenSansWhiteA700 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get bodyLargeOpenSansWhiteA70018 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get bodyLargeOrientaBlack90001 =>
      theme.textTheme.bodyLarge!.orienta.copyWith(
        color: appTheme.black90001.withOpacity(0.55),
        fontSize: 18.fSize,
      );
  static get bodyLargeRobotoBlue300 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.blue300,
      );
  static get bodyMediumDeeporange50 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepOrange50,
      );
  static get bodyMediumGray10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray10001,
      );
  static get bodyMediumGray5003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray5003,
      );
  static get bodyMediumRobotoWhiteA70001 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w400,
      );
  // Display text style
  static get displaySmall38 => theme.textTheme.displaySmall!.copyWith(
        fontSize: 38.fSize,
      );
  // Title text style
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInterSemiBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeMontserrat =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeMontserratGray50 =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMontserratGray5002 =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.gray5002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSans =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsGray5002 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray5002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
      );
  static get titleMediumRobotoBlack90001 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.black90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoPrimaryContainer =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallExtraBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallMontserratBlack90001 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMontserratDeeporange5001 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.deepOrange5001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallMontserratDeeporange5001Medium =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.deepOrange5001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMontserratLightblue300 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.lightBlue300,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRed500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red500,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get sFPro {
    return copyWith(
      fontFamily: 'SF Pro',
    );
  }

  TextStyle get arial {
    return copyWith(
      fontFamily: 'Arial',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get orienta {
    return copyWith(
      fontFamily: 'Orienta',
    );
  }
}
