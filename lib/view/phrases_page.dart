import 'package:flutter/material.dart';
import 'package:toke_app1/components/item.dart';
import 'package:toke_app1/models/number.dart';

import '../components/phrases_item.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  final List<ItemModel> PhrasesList = [
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'are you welcome',
        jpName: ''),
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        enName: 'Making dreams isnt impossible',

        jpName: ''),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        enName: 'the future depends on you',
        jpName: ''),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        enName: 'you can do every thing',
        jpName: ''),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        enName: 'never stop trying',
        jpName: ''),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        enName: 'work hard in silence',
        jpName: ''),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        enName: 'Dont give up',
        jpName: 'Sebun'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        enName: 'Dream it do it',
        jpName: ''),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        enName: 'let success make the noise',
        jpName: ''),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        enName: 'you owe it to yourself to become great',
        jpName: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('phrases '),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: PhrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
              color: Color(0xff50ADC7),
             item: PhrasesList[index],
          );
        },
      ),
    );
  }}