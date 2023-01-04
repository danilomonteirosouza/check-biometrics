import 'package:biometric_authentication/views/homepage.dart';
import 'package:biometric_authentication/views/user_authenticated.dart';
import 'package:flutter/material.dart';


class RouteGenerator {
  static const String homepage = "/";
  static const String errorRoute = "/error-route";
  static const String userAuthenticated = "/user-authenticated";

  static Route<dynamic>? generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch( settings.name ){
      case homepage :
        return MaterialPageRoute(
            builder: (_) => const BiometricAuthentication()
        );
      case userAuthenticated :
        return MaterialPageRoute(
            builder: (_) => const UserAuthenticated()
        );
    }
    return null;
  }
}