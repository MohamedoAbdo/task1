
import 'package:flutter/material.dart';
import 'package:toke_app1/firebase_options.dart';
import 'package:toke_app1/view/home.dart';
import 'package:toke_app1/view/signin.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  runApp(MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home:signin()

    );
  }
}

