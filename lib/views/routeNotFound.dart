import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RouteNotFound extends StatefulWidget {
  const RouteNotFound({Key? key}) : super(key: key);

  @override
  State<RouteNotFound> createState() => _RouteNotFoundState();
}

class _RouteNotFoundState extends State<RouteNotFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        elevation: 0.0, // Remove line
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.lightBlue,
        child: Stack(
          children: <Widget>[
            Lottie.asset(
              'assets/lottie/route_error.json',
              fit: BoxFit.contain,
            ),
          ],
        )
      ),
    );
  }
}
