import 'package:flutter/material.dart';
import 'package:toke_app1/components/item.dart';
import 'package:toke_app1/models/number.dart';

class NumbersView extends StatelessWidget {
   NumbersView({super.key});
 final List<ItemModel> numbers = [
   ItemModel(image:'assets/images/numbers/number_one.png', enName:'one', jpName:'ichi'),
   ItemModel(image: 'assets/images/numbers/number_two.png', enName: 'two', jpName: 'ni'),
   ItemModel(image: 'assets/images/numbers/number_three.png', enName: 'three', jpName: 'San'),
   ItemModel(image: 'assets/images/numbers/number_four.png', enName: 'four', jpName: 'shi'),
   ItemModel(image: 'assets/images/numbers/number_five.png', enName: 'five', jpName: 'GO'),
   ItemModel(image: 'assets/images/numbers/number_six.png', enName: 'six', jpName: 'Roku'),
   ItemModel(image: 'assets/images/numbers/number_seven.png', enName: 'seven', jpName: 'Sebun'),
   ItemModel(image: 'assets/images/numbers/number_eight.png', enName: 'eight', jpName: 'hachi'),
   ItemModel(image: 'assets/images/numbers/number_nine.png', enName: 'nine', jpName: 'Kyu'),
   ItemModel(image: 'assets/images/numbers/number_ten.png', enName: 'ten', jpName: 'ju'),

 ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff46322B),
      ),
      body:ListView.builder(
        itemCount:numbers.length ,
        itemBuilder: (context ,index)
        {
          return Item(
            color: Color(0xffEf9235),
              item: numbers[index]);
        },
      ) ,

    );
  }

 }


