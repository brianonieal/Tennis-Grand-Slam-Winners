import 'package:flutter/material.dart';
class PlayerInfo extends StatelessWidget
{
  final int passdata; //selected Text index
  var playername = ['Roger Federer','Rafael Nadal','Novak Djokovic','Pete Sampras','Bjorn Borg'];
  var playerCountry = ['Switzerland', 'Spain', 'Serbia', 'USA', 'Sweden'];
  var wins = [20, 19, 17, 14, 11];
  var playerphoto = ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWAQrVxkNKAs04PpkY1Zpn_QwI8zh6h9V4GA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT486mgj6hZiHcyTouWa_AKx3Le_842ZfPHnQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSslbUDhXWqA87gnpTNYpD2oMHVB2KNfDQZDA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRcdCNyK76YXLcGDf5FCeFaV3tOhZz8gjKg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkM3PvD4xqoDXWL3AKRnkeEiVYfRObTiAa-w&usqp=CAU'];
//constructor
  PlayerInfo({required this.passdata});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (home: Scaffold(
        appBar: AppBar(
          title: Text('Tennis Grand Slam Winners'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(playername[passdata],style: TextStyle(fontSize: 23.0),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: NetworkImage(playerphoto[passdata]),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Number of Wins: ' + wins[passdata].toString(),style: TextStyle(fontSize: 23.0),
              ),)
          ],),),
        )));
  }
}
