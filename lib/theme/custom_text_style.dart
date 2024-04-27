import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  // ignore: unused_element
  TextStyle get abhayaLibreExtraBold {
    return copyWith(
      fontFamily: 'Abhaya Libre ExtraBold',
    );
  }

  // ignore: unused_element
  TextStyle get alegreyaSans {
    return copyWith(
      fontFamily: 'Alegreya Sans',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Label text style
  static get labelLargeAbhayaLibreExtraBold =>
      theme.textTheme.labelLarge!.abhayaLibreExtraBold.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get labelLargeAbhayaLibreExtraBoldGray400 =>
      theme.textTheme.labelLarge!.abhayaLibreExtraBold.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeAbhayaLibreExtraBoldGreen100 =>
      theme.textTheme.labelLarge!.abhayaLibreExtraBold.copyWith(
        color: appTheme.green100,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeGreen100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green100,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumPrimary_1 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.64),
      );

  // Title text style
  static get titleSmallBluegray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray50,
      );
  static get titleSmallBluegray50_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray50,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallAlegreyaSans =>
      theme.textTheme.titleSmall!.alegreyaSans.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallAlegreyaSansOnPrimary =>
      theme.textTheme.titleSmall!.alegreyaSans.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGreen100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green100,
      );
  static get titleSmallGreen100_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green100,
      );
  // static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
  //       color: theme.colorScheme.onPrimary.withOpacity(1),
  //     );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
}
