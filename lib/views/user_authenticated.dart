import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UserAuthenticated extends StatefulWidget {
  const UserAuthenticated({Key? key}) : super(key: key);

  @override
  State<UserAuthenticated> createState() => _UserAuthenticatedState();
}

class _UserAuthenticatedState extends State<UserAuthenticated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.lightBlue,
        child: Lottie.asset(
            'assets/lottie/user_details.json',
            fit: BoxFit.contain
        ),
      ),
    );
  }
}
