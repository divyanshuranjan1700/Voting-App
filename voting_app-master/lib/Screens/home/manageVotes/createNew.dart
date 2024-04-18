// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:voting_app/Screens/homeScreen.dart';

class NewVote extends StatefulWidget {
  const NewVote({super.key});

  @override
  State<NewVote> createState() => _NewVoteState();
}

class _NewVoteState extends State<NewVote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(4, 42, 126, 1),
          title: Text("Create Polls"),
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(child: Text("Create your votes here")));
    //     home: SafeArea(
    //         child: Scaffold(
    //             appBar: AppBar(
    //   backgroundColor: Color.fromRGBO(4, 42, 126, 1),
    //   title: Text("Create Polls"),
    //   leading: BackButton(
    //     color: Colors.white,
    //     onPressed: () {
    //       Navigator.pop(context);
    //     },
    //   ),
    // ))));
    // Scaffold(
    //   body: ,
    // //   body: SafeArea(

    // //     child: Center(child: Text("Create your votes here"))),
    // );
  }
}
