import 'package:flutter/material.dart';
class PlayerInfo2 extends StatelessWidget
{
//define the passing variable
  final int passdata;
  var playername = ['Roger Federer','Rafael Nadal','Novak Djokovic','Pete Sampras','Bjorn Borg'];
  var playerCountry = ['Switzerland', 'Spain', 'Serbia', 'USA', 'Sweden'];
  var wins = [20, 19, 17, 14, 11];
//constructor
  PlayerInfo2({required this.passdata});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (home: Scaffold(
        appBar: AppBar( title: Text('Tennis Grand Slam Winners'), ),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(playername[passdata],style: TextStyle(fontSize: 23.0),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage('images/player$passdata.jpg'),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Number of Wins: ' + wins[passdata].toString(),style: TextStyle(fontSize: 23.0),
              ),)
          ],),),
        )));
  }
}
