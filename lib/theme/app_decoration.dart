import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';

class AppDecoration {
  // Box decorations
  static BoxDecoration get box => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.02, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.gray5001,
            appTheme.blue5001,
          ],
        ),
      );

  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5002,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50001,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillOnPrimaryContainer1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blue5002,
            appTheme.blue5003,
          ],
        ),
      );
  static BoxDecoration get gradientBlueToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.02, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.blue5002,
            appTheme.red50,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.02, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.gray5001,
            appTheme.blue5001,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToBlue5001 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.02, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.gray5001,
            appTheme.blue5001,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.02, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.gray100,
            appTheme.red50,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: appTheme.gray20001,
        border: Border.all(
          color: appTheme.blue50,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.lightBlue70005,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              36,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlue50 => BoxDecoration(
        color: appTheme.amber200,
        border: Border.all(
          color: appTheme.blue50,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.lightBlue70005,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              36,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get roundedBorder62 => BorderRadius.circular(
        62.h,
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
