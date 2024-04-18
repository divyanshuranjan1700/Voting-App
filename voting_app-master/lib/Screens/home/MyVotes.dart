import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myVotes extends StatefulWidget {
  const myVotes({super.key});

  @override
  State<myVotes> createState() => _myVotesState();
}

class _myVotesState extends State<myVotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Color.fromRGBO(4, 42, 126, 1),
      title: Text("Polling history"),
      leading: BackButton(
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ));
  }
}
