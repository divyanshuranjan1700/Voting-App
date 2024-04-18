import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class results extends StatefulWidget {
  const results({super.key});

  @override
  State<results> createState() => _resultsState();
}

class _resultsState extends State<results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Color.fromRGBO(4, 42, 126, 1),
      title: Text("Result"),
      leading: BackButton(
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ));
  }
}
