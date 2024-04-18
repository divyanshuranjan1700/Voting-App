import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voting_app/Screens/home/manageVotes/CreateVotes.dart';
import 'package:voting_app/Screens/home/MyVotes.dart';
import 'package:voting_app/Screens/home/Result.dart';
import 'package:voting_app/Screens/loginScreen.dart';
import 'package:voting_app/Screens/tiles/tileScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap:() => {
                    Navigator.pushNamed(context, "/TileScreen")
                  },
                  child: Tabs(
                    topic: "Team \nCaptain",
                    icon: Icon(
                      Icons.done,
                      size: 15,
                      color: Colors.green,
                    ),
                  ),
                ),
                InkWell(
                  onTap:() => {
                    Navigator.pushNamed(context, "/TileScreen")
                  },
                  child: Tabs(
                    topic: "Team \nCaptain",
                    icon: Icon(
                      Icons.done,
                      size: 15,
                      color: Colors.green,
                    ),
                  ),
                ),
                InkWell(
                  onTap:() => {
                    Navigator.pushNamed(context, "/TileScreen")
                  },
                  child: Tabs(
                    topic: "Team \nCaptain",
                    icon: Icon(
                      Icons.done,
                      size: 15,
                      color: Colors.green,
                    ),
                  ),
                ),
                InkWell(
                  onTap:() => {
                    Navigator.pushNamed(context, "/TileScreen")
                  },
                  child: Tabs(
                    topic: "Team \nCaptain",
                    icon: Icon(
                      Icons.done,
                      size: 15,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(4, 42, 126, 1),
          title: const Text('Home'),
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(4, 42, 126, 1),
              ),
              accountName: Text("Dhruv Agrawal"),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage('assets/images/avatar.png')),
            ),
            ListTile(
              leading: Icon(Icons.poll),
              title: InkWell(
                  onTap: () => Navigator.pushNamed(context, "/Createscreen"),
                  child: Text('Create Votes')),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: InkWell(
                  onTap: () => Navigator.pushNamed(context, "/Resultscreen"),
                  child: Text('Result')),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: InkWell(
                  onTap: () => Navigator.pushNamed(context, "/Votescreen"),
                  child: Text('My Votes')),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: InkWell(
                  // onTap: () => Navigator.popUntil(context, (route) => false),
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                    // Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginScreen()));
                  },
                  child: Text('Logout')),
            ),
          ],
        )));
  }
}

class Tabs extends StatefulWidget {
  final String topic;
  final Icon icon;
  const Tabs({required this.topic, required this.icon, super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: Color.fromARGB(255, 72, 118, 166)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            child: Container(
              child: Center(
                child: Text(
                  widget.topic,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(4),
            height: 15,
            width: 15,
            color: Colors.white,
            child: widget.icon,
          )
        ],
      ),
    );
  }
}
