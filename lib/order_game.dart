import 'package:flutter/material.dart';

import 'game.dart';

class OrderGame extends StatefulWidget {


  Game game;

  OrderGame(this.game);
  @override
  State<OrderGame> createState() => _OrderGameState();
}

class _OrderGameState extends State<OrderGame> {
  int quantite=0;

  @override
  void initState() {

    quantite = widget.game.qte;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            //path
            widget.game.path,
            width: 450,
            height: 200,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 50),
          child: Text(widget.game.description),
        ),
        Text("${widget.game.price} TND"),
        Text("Exemples disponibles: ${quantite}"),
        SizedBox(
          height: 80,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                quantite --;
              });

              print("Game purchased");
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.shopping_basket_sharp),
                Text(("Acheter"),
                ),
              ],
            ))
      ],
    );
  }
}
