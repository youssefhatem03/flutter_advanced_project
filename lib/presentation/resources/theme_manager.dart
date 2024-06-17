

import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/presentation/resources/color_manager.dart';
import 'package:flutter_advanced_project/presentation/resources/font_manager.dart';
import 'package:flutter_advanced_project/presentation/resources/styles_manager.dart';
import 'package:flutter_advanced_project/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(

    // color theme
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    splashColor: ColorManager.primaryOpacity70,
    disabledColor: ColorManager.grey1,

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      shadowColor: ColorManager.primaryOpacity70,
      elevation: AppSize.s4,
      titleTextStyle: getRegularStyle(color: ColorManager.white, fontSize: FontSizeManager.s16)
    ),


    // Button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      buttonColor: ColorManager.primary,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.primaryOpacity70
    ),


    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color:ColorManager.white),
        foregroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12)),
      )
    ),


    // Text Theme
    textTheme: TextTheme(
      displayLarge: getRegularStyle(color: ColorManager.darkPrimary, fontSize: FontSizeManager.s16),
      headlineMedium: getBoldStyle(color: ColorManager.darkGrey),
      labelLarge: getSemiBoldStyle(color: ColorManager.white, fontSize: AppSize.s40)
    ),


    // Input Decoration Theme (TextFromField Theme)
    inputDecorationTheme: InputDecorationTheme(

      contentPadding: const EdgeInsets.all(AppPadding.p8),

      labelStyle: getRegularStyle(color: ColorManager.darkGrey),

      hintStyle:  getRegularStyle(color: ColorManager.grey1),

      errorStyle:  getRegularStyle(color: ColorManager.error),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),


      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.error,
            width: AppSize.s1_5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),

      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),

      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),
    ),
  );
}