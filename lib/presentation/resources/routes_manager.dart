import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/presentation/forgot_password/forgot_password.dart';
import 'package:flutter_advanced_project/presentation/login/login.dart';
import 'package:flutter_advanced_project/presentation/main_view/main_view.dart';
import 'package:flutter_advanced_project/presentation/onboarding/onboarding.dart';
import 'package:flutter_advanced_project/presentation/register/register.dart';
import 'package:flutter_advanced_project/presentation/resources/strings_manager.dart';
import 'package:flutter_advanced_project/presentation/splash/splash.dart';
import 'package:flutter_advanced_project/presentation/store_details/store_details.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {

  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case Routes.splashRoute: return MaterialPageRoute(builder: (_)=> const SplashView());
      case Routes.onBoardingRoute: return MaterialPageRoute(builder: (_)=> const OnBoardingView());
      case Routes.loginRoute: return MaterialPageRoute(builder: (_)=> const LoginView());
      case Routes.registerRoute: return MaterialPageRoute(builder: (_)=> const RegisterView());
      case Routes.forgotPasswordRoute: return MaterialPageRoute(builder: (_)=> const ForgotPasswordView());
      case Routes.mainRoute: return MaterialPageRoute(builder: (_)=> const MainView());
      case Routes.storeDetailsRoute: return MaterialPageRoute(builder: (_)=> const StoreDetailsView());

      default: return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute(){
    return MaterialPageRoute(
      builder: (_)=> const Scaffold(
        body: Center(child: Text(AppStrings.noRouteFound),),
      ),
    );
  }


}