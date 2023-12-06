import 'package:flutter/material.dart';
import 'package:toke_app1/components/category_item.dart';
import 'package:toke_app1/view/family_members.dart';
import 'package:toke_app1/view/phrases_page.dart';

import 'numbers view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffFEF6DB) ,
      appBar:AppBar(
        backgroundColor:Color(0xff46322B) ,
        title: Text('Toku'),
      ),
      body:Column(
        children: [
         Category(
           text: "Numbers", color:Color(0xffEF9235), onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context){
               return NumbersView();
             }));
         } ,),
          Category(
            onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context){
              return FamilyMembers();
            }));

            },

            text: 'FamilyMembers', color: Color(0xff558B37),),

          Category(
            onTap:()
            {Navigator.push(context, MaterialPageRoute(builder: (context){
              return PhrasesPage();
            }));


            } ,

            text: 'Phrases', color: Color(0xff50ADC7), )
        ],
      ) ,
    ) ;

  }
}
