import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toke_app1/models/number.dart';

import 'item_info.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(item.image)),
          Padding(
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
          Padding(
            padding: EdgeInsets.only(right: 16),
          ),
          Expanded(child: ItemInfo(item:item)),
        ],
      ),
    );
  }
}




