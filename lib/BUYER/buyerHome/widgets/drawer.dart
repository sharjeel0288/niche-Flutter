// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:login_niche2/BUYER/buyerCatrgories/screen/SubCategorySevicesScreen.dart';
import 'package:login_niche2/API/API.dart';
import 'package:login_niche2/API/model.dart';

import 'expandableCategoryCard.dart';

class CustomEndDrawer extends StatefulWidget {
  const CustomEndDrawer({super.key});

  @override
  _CustomEndDrawerState createState() => _CustomEndDrawerState();
}

class _CustomEndDrawerState extends State<CustomEndDrawer> {
  bool mouseRegionHovered1 = false;
  bool mouseRegionHovered2 = false;
  List<Category>? categories;
  List<SubCategory>? subcategories;

  final API api = API();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getcategory();
  }

  Future<void> getcategory() async {
    try {
      String url = "${api.baseURL}category";
      var result = await http.get(Uri.parse(url));
      print(result.body);
      categories = jsonDecode(result.body)
          .map((item) => Category.fromJson(item))
          .toList()
          .cast<Category>();
      setState(() {});
    } catch (error) {
      print("Error getting categories: $error");
      rethrow; // Rethrow the error for upper layers to handle
    }
  }

  Future<List<SubCategory>> getSubcategories(int categoryId) async {
    try {
      String url =
          "${api.baseURL}category/$categoryId"; // Update the URL pattern
      var result = await http.get(Uri.parse(url));
      List<dynamic> subcategoryJsonList = jsonDecode(result.body);
      List<SubCategory> subcategories = subcategoryJsonList
          .map((item) => SubCategory.fromJson(item))
          .toList()
          .cast<SubCategory>();
      return subcategories;
    } catch (error) {
      print("Error getting subcategories: $error");
      rethrow; // Rethrow the error for upper layers to handle
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        elevation: 16,
        width: double.infinity,
        //height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
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
                ],
              ),
            ),
            categories != null
                ? Expanded(
                    child: ListView.builder(
                      itemCount: categories!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return FutureBuilder<List<SubCategory>>(
                          future: getSubcategories(
                              (categories![index].categoryId!.toInt())),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return CircularProgressIndicator(); // Loading indicator
                            } else if (snapshot.hasError) {
                              return Text("Error fetching subcategories");
                            } else if (snapshot.hasData) {
                              return ExpandableWidget(
                                mainCategory:
                                    categories![index].categoryName.toString(),
                                subcategories: snapshot.data!,
                              );
                            } else {
                              return Container();
                            }
                          },
                        );
                      },
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
