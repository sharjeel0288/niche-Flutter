// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:login_niche2/BUYER/buyerCatrgories/screen/SubCategorySevicesScreen.dart';

import 'expandableCategoryCard.dart';

class CustomEndDrawer extends StatefulWidget {
  const CustomEndDrawer({super.key});

  @override
  _CustomEndDrawerState createState() => _CustomEndDrawerState();
}

class _CustomEndDrawerState extends State<CustomEndDrawer> {
  bool mouseRegionHovered1 = false;
  bool mouseRegionHovered2 = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Drawer(
        elevation: 16,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Container(
                      width: 180,
                      height: 44,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/niche.png',
                          width: 300,
                          height: 185,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  height: 1,
                  color: Colors.grey,
                ),
                ExpandableWidget(
                  mainCategory: 'Salon for Men',
                  subcategories: [
                    Subcategory(
                      title: 'Hair dressing',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SubCategorySevicesScreen()));
                      },
                    ),
                    Subcategory(
                      title: 'Another subcategory',
                      onTap: () {
                        // Handle onTap for Another subcategory
                        // Do something when Another subcategory is tapped
                      },
                    ),
                    // Add more subcategories as needed
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
