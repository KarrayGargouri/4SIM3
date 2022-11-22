import 'package:flutter/material.dart';
import 'package:g_store/game_card.dart';
import 'package:g_store/order_game.dart';

import 'game.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Game> games = [];
  @override
  void initState() {
    games.add(Game("assets/dmc5.jpg","Devil May Cry 5",500,"",20));
    games.add(Game("assets/fifa.jpg","Fifa 2022",400,"",36));
    games.add(Game("assets/nfs.jpg","Need For Speed",700,"DESC DESC DESC DESC DESC",20));
    games.add(Game("assets/dmc5.jpg","Devil May Cry 5",500,"",20));
    games.add(Game("assets/fifa.jpg","Fifa 2022",400,"",36));
    games.add(Game("assets/nfs.jpg","Need For Speed",700,"",20));
    games.add(Game("assets/dmc5.jpg","Devil May Cry 5",500,"",20));
    games.add(Game("assets/fifa.jpg","Fifa 2022",400,"",36));
    games.add(Game("assets/nfs.jpg","Need For Speed",700,"",20));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'G-Store ESPRIT',
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body:OrderGame(games[2])
    /*   ListView.builder(
         itemCount: games.length,
           itemBuilder: (BuildContext context,int index){
             return GameCard(games[index]);
           }
           )*/
      ),
    );
  }
}
