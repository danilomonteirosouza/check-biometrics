import 'package:biometric_authentication/routes/routegenerator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:lottie/lottie.dart';

enum _SupportState {
  unknown,
  supported,
  unsupported,
}

class BiometricAuthentication extends StatefulWidget {
  const BiometricAuthentication({Key? key}) : super(key: key);

  @override
  State<BiometricAuthentication> createState() => _BiometricAuthenticationState();
}

class _BiometricAuthenticationState extends State<BiometricAuthentication> {

  final LocalAuthentication auth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
        localizedReason: 'Let OS determine authentication method',
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      );
      setState(() {
        _isAuthenticating = false;
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }
    setState(
            () => _authorized = authenticated
            ? 'Authorized'
            : 'Not Authorized'
    );
    if(authenticated){
      Navigator.pushNamed(
          context,
          RouteGenerator.userAuthenticated,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported
          ? _SupportState.supported
          : _SupportState.unsupported),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.lightBlue,
            child: Lottie.asset(
                'assets/lottie/background_homepage.json',
                fit: BoxFit.cover
            ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 80,
        width: 80,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.deepOrangeAccent,
            onPressed: () {
              _authenticate();
            },
            child: Lottie.asset(
                'assets/lottie/biometric.json',
                fit: BoxFit.contain
            ),
          ),
        ),
      )
    );
  }
}