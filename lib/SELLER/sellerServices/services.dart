import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_niche2/SELLER/SellerHome/seller_home_Screen.dart';
import 'package:login_niche2/SELLER/SellerHome/widgets/serviceCard.dart';
import 'package:login_niche2/SELLER/sellerServices/add_service.dart';
import 'package:login_niche2/SELLER/sellerServices/edit_service.dart';
import 'package:login_niche2/utils/text_style.dart';

import '../sellerNavbar/seller_navbar.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  bool _isShown = true;

  void _delete(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text('Please Confirm'),
            content: const Text('Are you sure to remove the box?'),
            actions: [
              // The "Yes" button
              TextButton(
                  onPressed: () {
                    // Remove the box
                    setState(() {
                      _isShown = false;
                    });

                    // Close the dialog
                    Navigator.of(context).pop();
                  },
                  child: const Text('Yes')),
              TextButton(
                  onPressed: () {
                    // Close the dialog
                    Navigator.of(context).pop();
                  },
                  child: const Text('No'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    void showSnackBar(BuildContext context, String message) {
      final snackBar = SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.black87,
        elevation: 0,
        content: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        duration: const Duration(seconds: 2),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        snackBar,
      );
    }

    var Service_Name = ["Hair Cutting", "Car Repairing", "Sofa Cleaning"];
    var Service_Rating = [4.5, 4.1, 4.0];
    var Service_Time = ["1 hour", "30 mins", "2 hour"];
    var Service_Price = [49.99, 79.99, 149.99];
    var Service_Image = [
      "https://img.freepik.com/free-photo/young-bearded-man-hairdresser-salon_1163-2019.jpg",
      "https://img.freepik.com/premium-photo/auto-car-repair-service-center-mechanic-examining-car-suspension_136930-6.jpg?w=740",
      "https://img.freepik.com/premium-photo/dry-cleaner-s-employee-removing-dirt-from-furniture-flat-closeup_152904-2670.jpg?w=740",
    ];

    var Service_NameD = ["House Cleaning"];
    var Service_RatingD = [0.0];
    var Service_TimeD = ["1 hour"];
    var Service_PriceD = [99.99];
    var Service_ImageD = [
      "https://img.freepik.com/free-photo/man-cleaning-his-home_23-2148119214.jpg?w=740&t=st=1691130833~exp=1691131433~hmac=055c8edc8e0a79e3a6408deb9ee3d5dbdb89166f43f821f300542bd76b9dfcb1",
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddService()),
            );
          },
          child: Icon(Icons.add),
          backgroundColor: Color(0xFF6440FE),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavbarSeller()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Your Services",
            style: TextStyle(color: Colors.black),
          ),
          bottom: const TabBar(
              indicatorColor: Color(0xFF4F709C),
              indicatorPadding: EdgeInsets.only(bottom: 10, left: 10),
              indicatorWeight: 2,
              tabs: [
                Tab(
                  child: Text("Active",
                      style: TextStyle(color: Color(0xFF6440FE))),
                ),
                Tab(
                  child:
                      Text("Draft", style: TextStyle(color: Color(0xFF6440FE))),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(children: [
                    ServiceCard(
                      serviceName: Service_Name[index],
                      serviceRatings: Service_Rating[index],
                      serviceTime: Service_Time[index],
                      servicePrice: Service_Price[index],
                      serviceImage: Service_Image[index],
                      onEdit: () {
                        print('edit');
                        // Perform edit action
                      },
                      onDelete: () {
                        print('delete');
                        // Perform delete action
                      },
                      onPreview: () {
                        // Perform preview action
                        print('preview');
                      },
                    ),
                  ]);
                }),
            ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(children: [
                    ServiceCard(
                      serviceName: Service_NameD[index],
                      serviceRatings: Service_RatingD[index],
                      serviceTime: Service_TimeD[index],
                      servicePrice: Service_PriceD[index],
                      serviceImage: Service_ImageD[index],
                      onEdit: () {
                        print('edit');
                        // Perform edit action
                      },
                      onDelete: () {
                        print('delete');
                        // Perform delete action
                      },
                      onPreview: () {
                        // Perform preview action
                        print('preview');
                      },
                    ),
                  ]);
                })
          ],
        ),
      ),
    );
  }
}
