import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumSFProTextBlack90001 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.black90001,
        fontSize: 13.fSize,
      );
  static get bodySmallBlack90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 9.fSize,
      );
  static get bodySmallGray5009 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 9.fSize,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInterBold =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInterBold_1 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.5),
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainerSemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsBlack900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePoppinsBlack90001 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black90001,
      );
  static get titleLargePoppinsGray800 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray800,
      );
  static get titleLargePoppinsGray800_1 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray800,
      );
  static get titleLargePoppinsIndigo300 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.indigo300,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsOnErrorContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsPrimary =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimaryBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimaryBold23 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumCyan400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan400,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSFProText =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray50002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterPrimaryBold =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
