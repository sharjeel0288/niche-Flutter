import 'package:flutter/material.dart';
import 'package:login_niche2/BUYER/buyerCheckOut/screen/buyerCheckOutScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//final h = MediaQuery.of(context).size.height*0.1;
  // final List<Widget> _pages = [
  //   const Splash1(),
  //   const Splash2(),
  //   const Splash3(),
  //   const Splash4(),
  //   //const Signup(),
  // ];
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CheckOutScreen());
  }
}
