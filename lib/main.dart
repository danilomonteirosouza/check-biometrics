import 'package:biometric_authentication/routes/routegenerator.dart';
import 'package:biometric_authentication/views/homepage.dart';
import 'package:biometric_authentication/views/routeNotFound.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'A Biometric App',
      home: const BiometricAuthentication(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) => const RouteNotFound());
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}