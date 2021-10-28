import 'package:flutter/material.dart';
import 'playerinfo.dart';
import 'playerinfo2.dart';

void main() { runApp(MaterialApp(home: ShowList())); }

class ShowList extends StatefulWidget {
  @override
  ShowListState createState() { return ShowListState(); }
}
class ShowListState extends State<ShowList> {
  var playername = ['Roger Federer', 'Rafael Nadal', 'Novak Djokovic', 'Pete Sampras', 'Bjorn Borg' ];
  @override
  Widget build(BuildContext context) {
    print('playername size: ' + playername.length.toString());
    return Scaffold(
      appBar: AppBar(title: Text('Grand Slam Tennis Winners')),
      body: ListView.builder(
        //making sure the list only occupies space necessary to display all of its items
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: playername.length,
        itemBuilder: (BuildContext context, int position) {
          return InkWell(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text( playername[position], style: TextStyle(fontSize: 23.0), ), ), ),
            onTap: () {
              print('Length of playername is {playername.length}');
              print('You tapped ' + playername[position] + ' with index: ' + position.toString());
              //lets send the position to the second screen
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return PlayerInfo2(passdata: position); }));
              }); },
          );
        },
      ),
    ); }
}
