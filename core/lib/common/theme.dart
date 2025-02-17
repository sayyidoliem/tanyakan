import "package:flutter/material.dart";

class MaterialTheme {
  // final TextTheme textTheme;

  // const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006c48),
      surfaceTint: Color(0xff006c48),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff60b98e),
      onPrimaryContainer: Color(0xff002214),
      secondary: Color(0xff456554),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcbefd8),
      onSecondaryContainer: Color(0xff315140),
      tertiary: Color(0xff5f6139),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9fa174),
      onTertiaryContainer: Color(0xff101200),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff6fbf5),
      onSurface: Color(0xff181d1a),
      onSurfaceVariant: Color(0xff3f4942),
      outline: Color(0xff6f7a72),
      outlineVariant: Color(0xffbec9c0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322e),
      inversePrimary: Color(0xff7fd8ab),
      primaryFixed: Color(0xff9bf5c6),
      onPrimaryFixed: Color(0xff002113),
      primaryFixedDim: Color(0xff7fd8ab),
      onPrimaryFixedVariant: Color(0xff005235),
      secondaryFixed: Color(0xffc7ebd4),
      onSecondaryFixed: Color(0xff002113),
      secondaryFixedDim: Color(0xffabcfb9),
      onSecondaryFixedVariant: Color(0xff2e4d3d),
      tertiaryFixed: Color(0xffe4e6b4),
      onTertiaryFixed: Color(0xff1b1d01),
      tertiaryFixedDim: Color(0xffc8ca9a),
      onTertiaryFixedVariant: Color(0xff474924),
      surfaceDim: Color(0xffd7dbd6),
      surfaceBright: Color(0xfff6fbf5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f5ef),
      surfaceContainer: Color(0xffebefe9),
      surfaceContainerHigh: Color(0xffe5e9e4),
      surfaceContainerHighest: Color(0xffdfe4de),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004d32),
      surfaceTint: Color(0xff006c48),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff26845d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2a4939),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5b7c69),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff434521),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff75774e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fbf5),
      onSurface: Color(0xff181d1a),
      onSurfaceVariant: Color(0xff3b453e),
      outline: Color(0xff57625a),
      outlineVariant: Color(0xff727d75),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322e),
      inversePrimary: Color(0xff7fd8ab),
      primaryFixed: Color(0xff26845d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff006a46),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5b7c69),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff436351),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff75774e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff5c5e37),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dbd6),
      surfaceBright: Color(0xfff6fbf5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f5ef),
      surfaceContainer: Color(0xffebefe9),
      surfaceContainerHigh: Color(0xffe5e9e4),
      surfaceContainerHighest: Color(0xffdfe4de),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002818),
      surfaceTint: Color(0xff006c48),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004d32),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff06281a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2a4939),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff222404),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff434521),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fbf5),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1c2620),
      outline: Color(0xff3b453e),
      outlineVariant: Color(0xff3b453e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322e),
      inversePrimary: Color(0xffa4ffcf),
      primaryFixed: Color(0xff004d32),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003421),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff2a4939),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff123224),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff434521),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2d2f0c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dbd6),
      surfaceBright: Color(0xfff6fbf5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f5ef),
      surfaceContainer: Color(0xffebefe9),
      surfaceContainerHigh: Color(0xffe5e9e4),
      surfaceContainerHighest: Color(0xffdfe4de),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff7fd8ab),
      surfaceTint: Color(0xff7fd8ab),
      onPrimary: Color(0xff003824),
      primaryContainer: Color(0xff49a379),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffabcfb9),
      onSecondary: Color(0xff173627),
      secondaryContainer: Color(0xff264636),
      onSecondaryContainer: Color(0xffb9ddc7),
      tertiary: Color(0xffc8ca9a),
      onTertiary: Color(0xff303210),
      tertiaryContainer: Color(0xff75774e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101411),
      onSurface: Color(0xffdfe4de),
      onSurfaceVariant: Color(0xffbec9c0),
      outline: Color(0xff88938b),
      outlineVariant: Color(0xff3f4942),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4de),
      inversePrimary: Color(0xff006c48),
      primaryFixed: Color(0xff9bf5c6),
      onPrimaryFixed: Color(0xff002113),
      primaryFixedDim: Color(0xff7fd8ab),
      onPrimaryFixedVariant: Color(0xff005235),
      secondaryFixed: Color(0xffc7ebd4),
      onSecondaryFixed: Color(0xff002113),
      secondaryFixedDim: Color(0xffabcfb9),
      onSecondaryFixedVariant: Color(0xff2e4d3d),
      tertiaryFixed: Color(0xffe4e6b4),
      onTertiaryFixed: Color(0xff1b1d01),
      tertiaryFixedDim: Color(0xffc8ca9a),
      onTertiaryFixedVariant: Color(0xff474924),
      surfaceDim: Color(0xff101411),
      surfaceBright: Color(0xff353a37),
      surfaceContainerLowest: Color(0xff0b0f0c),
      surfaceContainerLow: Color(0xff181d1a),
      surfaceContainer: Color(0xff1c211d),
      surfaceContainerHigh: Color(0xff262b28),
      surfaceContainerHighest: Color(0xff313632),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff83ddaf),
      surfaceTint: Color(0xff7fd8ab),
      onPrimary: Color(0xff001b0f),
      primaryContainer: Color(0xff49a379),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffafd3bd),
      onSecondary: Color(0xff001b0f),
      secondaryContainer: Color(0xff769885),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffccce9e),
      onTertiary: Color(0xff161800),
      tertiaryContainer: Color(0xff929468),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101411),
      onSurface: Color(0xfff8fcf6),
      onSurfaceVariant: Color(0xffc2cec4),
      outline: Color(0xff9aa69d),
      outlineVariant: Color(0xff7b867e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4de),
      inversePrimary: Color(0xff005336),
      primaryFixed: Color(0xff9bf5c6),
      onPrimaryFixed: Color(0xff00150b),
      primaryFixedDim: Color(0xff7fd8ab),
      onPrimaryFixedVariant: Color(0xff003f28),
      secondaryFixed: Color(0xffc7ebd4),
      onSecondaryFixed: Color(0xff00150b),
      secondaryFixedDim: Color(0xffabcfb9),
      onSecondaryFixedVariant: Color(0xff1d3c2d),
      tertiaryFixed: Color(0xffe4e6b4),
      onTertiaryFixed: Color(0xff111200),
      tertiaryFixedDim: Color(0xffc8ca9a),
      onTertiaryFixedVariant: Color(0xff363815),
      surfaceDim: Color(0xff101411),
      surfaceBright: Color(0xff353a37),
      surfaceContainerLowest: Color(0xff0b0f0c),
      surfaceContainerLow: Color(0xff181d1a),
      surfaceContainer: Color(0xff1c211d),
      surfaceContainerHigh: Color(0xff262b28),
      surfaceContainerHighest: Color(0xff313632),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeefff2),
      surfaceTint: Color(0xff7fd8ab),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff83ddaf),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeefff2),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffafd3bd),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffdfecb),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffccce9e),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101411),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff2fef4),
      outline: Color(0xffc2cec4),
      outlineVariant: Color(0xffc2cec4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4de),
      inversePrimary: Color(0xff00311f),
      primaryFixed: Color(0xff9ff9ca),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff83ddaf),
      onPrimaryFixedVariant: Color(0xff001b0f),
      secondaryFixed: Color(0xffcbefd9),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffafd3bd),
      onSecondaryFixedVariant: Color(0xff001b0f),
      tertiaryFixed: Color(0xffe9eab8),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffccce9e),
      onTertiaryFixedVariant: Color(0xff161800),
      surfaceDim: Color(0xff101411),
      surfaceBright: Color(0xff353a37),
      surfaceContainerLowest: Color(0xff0b0f0c),
      surfaceContainerLow: Color(0xff181d1a),
      surfaceContainer: Color(0xff1c211d),
      surfaceContainerHigh: Color(0xff262b28),
      surfaceContainerHighest: Color(0xff313632),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
    //  textTheme: textTheme.apply(
    //    bodyColor: colorScheme.onSurface,
    //    displayColor: colorScheme.onSurface,
    //  ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
