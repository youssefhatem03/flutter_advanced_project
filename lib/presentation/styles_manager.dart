import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/presentation/font_manager.dart';

TextStyle _getTextStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color){
  return TextStyle(fontSize: fontSize, fontFamily: fontFamily, fontWeight: fontWeight, color: color);
}


// Light Text Style
TextStyle getLightStyle({double fontSize = 12, required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.light, color);
}


// Regular Text Style
TextStyle getRegularStyle({double fontSize = 12, required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}


// Medium Text Style
TextStyle getMediumStyle({double fontSize = 12, required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
}


// Semi Bold Text Style
TextStyle getSemiBoldStyle({double fontSize = 12, required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color);
}


// Bold Text Style
TextStyle getBoldStyle({double fontSize = 12, required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
}
