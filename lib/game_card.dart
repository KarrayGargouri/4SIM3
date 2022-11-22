import 'package:flutter/material.dart';

import 'game.dart';

class GameCard extends StatelessWidget {


  Game game;
  // GameCard(String path, String name, int price){
  //   this._path = path;
  //   this._name = name;
  //   this._price = price;
  // }

  GameCard(this.game);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Row(
        children: [
          Container(
            child: Image.asset(
              game.path,
              width: 180,
              height: 90,
            ),
            padding: EdgeInsets.all(10),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  game.name,
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
                Text('${game.price} DT',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
