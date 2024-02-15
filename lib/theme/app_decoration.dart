import 'package:flutter/material.dart';
import 'package:shiv_s_application216/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray700,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static BoxDecoration get fillOnError1 => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.42),
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientErrorContainerToGreenA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.49, 0.11),
          end: Alignment(-0.27, 1.08),
          colors: [
            theme.colorScheme.errorContainer,
            appTheme.greenA400,
          ],
        ),
      );
  static BoxDecoration get gradientRedAToDeepOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.49, 0.12),
          end: Alignment(-0.24, 1.09),
          colors: [
            appTheme.redA700,
            appTheme.deepOrange400,
          ],
        ),
      );
  static BoxDecoration get gradientYellowToDeepOrangeA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.48, 0.12),
          end: Alignment(-0.24, 1.09),
          colors: [
            appTheme.yellow400,
            appTheme.deepOrangeA700,
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL29 => BorderRadius.vertical(
        top: Radius.circular(29.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
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
