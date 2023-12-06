import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/number.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              item.jpName,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(item.enName,
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),
        Spacer(),
        IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('sounds/colors/black.wav'));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            )),

      ],
    );
  }
}