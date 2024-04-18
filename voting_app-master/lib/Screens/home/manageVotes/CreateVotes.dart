import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voting_app/Screens/home/manageVotes/createNew.dart';

class createVote extends StatefulWidget {
  const createVote({super.key});

  @override
  State<createVote> createState() => _createVoteState();
}

class _createVoteState extends State<createVote> {
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
        body: SafeArea(
          child: Stack(children: [
            Center(child: Text("Nothing to show here")),
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.all(20),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewVote()));
                },
                backgroundColor: Color.fromRGBO(4, 42, 126, 1),
                child: const Icon(Icons.add),
              ),
            )
          ]),
        ));
  }
}
