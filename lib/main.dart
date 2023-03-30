import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:job365/home_page.dart';
import 'package:job365/phone.dart';
import 'package:job365/verify.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'homePage':(context)=>HomePage(),
    },
  ));
}