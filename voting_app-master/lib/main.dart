import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:voting_app/Screens/home/manageVotes/CreateVotes.dart';
import 'package:voting_app/Screens/home/MyVotes.dart';
import 'package:voting_app/Screens/home/Result.dart';
import 'package:voting_app/Screens/homeScreen.dart';
import 'package:voting_app/Screens/tiles/tileScreen.dart';
import 'package:voting_app/firebase_options.dart';
import 'Screens/Main_page.dart';
import 'Screens/loginScreen.dart';
import 'Screens/registrationScreen.dart';
import 'Animations/FadeAnimation.dart';
import 'Screens/resetPassScreen.dart';
import 'Screens/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Main_page(),
      initialRoute: "/",
      routes: {
        "/": (context) => splashScreen(),
        "/Loginscreen": (context) => loginScreen(),
        "/Signscreen": (context) => registrationScreen(),
        "/Homescreen": (context) => Home(),
        "/Createscreen": (context) => createVote(),
        "/Votescreen": (context) => myVotes(),
        "/Resultscreen": (context) => results(),
        "/TileScreen" : (context) => tileScreen(),
      },
    );
  }
}
