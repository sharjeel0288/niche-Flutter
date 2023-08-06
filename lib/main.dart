import 'package:flutter/material.dart';
import 'package:login_niche2/BUYER/buyerCheckOut/screen/buyerCheckOutScreen.dart';
import 'package:login_niche2/BUYER/buyerNavbar/navbar_buyer.dart';
import 'package:login_niche2/SELLER/SellerHome/seller_home_Screen.dart';
import 'package:login_niche2/SELLER/sellerNavbar/seller_navbar.dart';
import 'package:login_niche2/SELLER/sellerReview/reviews.dart';
import 'package:login_niche2/SplashScreen/Splash_Screen.dart';
import 'package:login_niche2/login/forget_password.dart';
import 'package:login_niche2/login/login_Screen.dart';
import 'package:login_niche2/signup/signup.dart';
import 'package:login_niche2/SELLER/sellerServices/services.dart';
import 'package:login_niche2/BUYER/buyerCatrgories/screen/ServiceDetailsScreen.dart';
import 'package:login_niche2/BUYER/buyerCatrgories/screen/SubCategorySevicesScreen.dart';

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
