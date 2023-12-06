import 'package:flutter/material.dart';
import 'package:toke_app1/components/item.dart';
import 'package:toke_app1/models/number.dart';

class FamilyMembers extends StatelessWidget {
  FamilyMembers({super.key});
  final List<ItemModel> numbers = [
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'daughter',
        jpName: 'musume'),
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        enName: 'father',
        jpName: 'chichioya'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        enName: 'grandfather',
        jpName: 'ojisan'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        enName: 'grandmother',
        jpName: 'sobo'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        enName: 'mother',
        jpName: 'hahgoya'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        enName: 'older brother',
        jpName: 'nisan'),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        enName: 'older sister',
        jpName: 'Ane'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        enName: 'son',
        jpName: 'musuko'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        enName: 'younger brother',
        jpName: 'kogusi'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        enName: 'younger sister',
        jpName: 'nuska'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members '),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(color: Color(0xff558B37), item: numbers[index]);
        },
      ),
    );
  }

}


