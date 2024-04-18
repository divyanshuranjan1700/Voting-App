import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voting_app/Screens/homeScreen.dart';
import 'package:voting_app/Services/Firebase_auth_methods.dart';
import 'package:voting_app/Screens/registrationScreen.dart';
import 'loginScreen.dart';
import 'package:voting_app/utils/globals.dart' as globals;

class splashScreen extends StatefulWidget {
  const splashScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<splashScreen> createState() => _splashScreenState();
}

enum AuthStatus {
  notSignedIn,
  signedIn,
}

class _splashScreenState extends State<splashScreen> {
  AuthStatus authStatus = AuthStatus.notSignedIn;
  @override
  void initState() {
    super.initState();
    String? user = FirebaseAuth.instance.currentUser?.uid;
    setState(() {
      authStatus = user == globals.userdId
          ? AuthStatus.notSignedIn
          : AuthStatus.signedIn;
    });
  }

  void _signedIn() {
    setState(() {
      authStatus = AuthStatus.signedIn;
    });
  }

  void _signedOut() {
    setState(() {
      authStatus = AuthStatus.notSignedIn;
    });
  }

  @override
  build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: "assets/images/splash.png",
      duration: 1500,
      splashIconSize: double.infinity,
      backgroundColor: Color.fromRGBO(4, 42, 126, 1),
      splashTransition: SplashTransition.sizeTransition,
      nextScreen: Screen(),
    );
  }

  Screen() {
    switch (authStatus) {
      case AuthStatus.notSignedIn:
        return loginScreen();
      case AuthStatus.signedIn:
        return Home();
    }
  }
}
