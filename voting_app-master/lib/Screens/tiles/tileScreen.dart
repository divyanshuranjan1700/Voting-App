import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tileScreen extends StatefulWidget {
  const tileScreen({super.key});

  @override
  State<tileScreen> createState() => _tileScreenState();
}

class _tileScreenState extends State<tileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text("hello,How are you"),
      ),
    );
  }
}