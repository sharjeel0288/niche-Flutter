import 'package:flutter/material.dart';
import 'package:login_niche2/BUYER/buyerCheckOut/screen/buyerCheckOutScreen.dart';
import 'package:login_niche2/BUYER/buyerNavbar/navbar_buyer.dart';
import 'package:login_niche2/SELLER/sellerNavbar/seller_navbar.dart';

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
<<<<<<< HEAD
    return const MaterialApp(home: NavbarSeller());
=======
    return const MaterialApp(home: NavbarBuyer());
>>>>>>> a1819c59cf5c96b86cb4e8d6f0be9e49c0b697b5
  }
}
