// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  XFile? image;
  late PickedFile _imageFile;
  final ImagePicker picker = ImagePicker();
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      print("Helooooooooooooooooooooooooooooooooooooo");
      image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    var height;

    var fonte = 14.0;
    var fontSize = 18.0;
    if (Get.width <= 389) {
      fontSize = 16.0;
      fonte = 12.0;
    } else if (Get.width > 420 && Get.width <= 960) {
      fontSize = 20.0;
      fonte = 16.0;
    } else if (Get.width > 380 && Get.width <= 420) {
      fontSize = 18.0;
      fonte = 14.0;
    } else {
      fontSize = 22.0;
      fonte = 18.0;
    }
    void takePhoto(ImageSource source) async {
      final pickedFile = await picker.pickImage(source: source);
      setState(() {
        _imageFile = pickedFile as PickedFile;
      });
    }

    Widget bottomsheet() {
      return Container(
        // decoration: BoxDecoration(border:Border.all(color: Colors.red,width: 3),borderRadius: BorderRadius.circular(8)),
        height: h * 0.2,
        width: w * 0.7,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(
              "Choose Profile Photo",
              style: GoogleFonts.dmSans(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF323B60),
                  decoration: TextDecoration.none),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        getImage(ImageSource.camera);
                      },
                      icon: Icon(Icons.camera_alt),
                      tooltip: "Camera",
                      iconSize: h * 0.04 + w * 0.04,
                    ),
                    Text("Camera")
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        getImage(ImageSource.gallery);
                      },
                      icon: Icon(Icons.image),
                      tooltip: "Gallery",
                      iconSize: h * 0.04 + w * 0.04,
                    ),
                    Text("Gallery")
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 2,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/niche.png',
            width: 123,
            height: 54,
            fit: BoxFit.fitWidth,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('Notification button pressed');
            },
            icon: const Icon(
              Icons.notifications_active_rounded,
              color: Color.fromARGB(255, 12, 3, 30),
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              print('Messages button pressed');
            },
            icon: const Icon(
              Icons.message_rounded,
              color: Color.fromARGB(255, 12, 3, 30),
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.keyboard_backspace,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                  Text(
                    "Edit Profile",
                    style: GoogleFonts.dmSans(
                        fontSize: fontSize,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF323B60),
                        decoration: TextDecoration.none),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.done,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: CircleAvatar(
                  radius: h * 0.05 + w * 0.05,
                  backgroundColor: Colors.blue,
                  child: image != null
                      ? CircleAvatar(
                          radius: h * 0.045 + w * 0.045,
                          // backgroundColor: Colors.red,
                          backgroundImage: FileImage(
                            File(image!.path),
                          ),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: h * 0.018 + w * 0.018,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                  radius: h * 0.015 + w * 0.015,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.linked_camera_outlined,
                                      color: Colors.white,
                                      weight: 100,
                                    ),
                                    onPressed: () {
                                      showModalBottomSheet(
                                          backgroundColor: Color(0xFFCEB290),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          context: context,
                                          builder: ((builder) =>
                                              bottomsheet()));
                                    },
                                  )),
                            ),
                          ))
                      : CircleAvatar(
                          radius: h * 0.045 + w * 0.045,
                          // backgroundColor: Colors.red,
                          backgroundImage: AssetImage("assets/peter.jpeg"),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: h * 0.018 + w * 0.018,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                  radius: h * 0.015 + w * 0.015,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.linked_camera_outlined,
                                      color: Colors.white,
                                      weight: 100,
                                    ),
                                    onPressed: () {
                                      showModalBottomSheet(
                                          backgroundColor: Color(0xFFCEB290),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          context: context,
                                          builder: ((builder) =>
                                              bottomsheet()));
                                    },
                                  )),
                            ),
                          ))),
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: w * 0.9,
                  height: h * 0.07,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF4F709C), width: 1),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 3, top: 3, left: 25),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Joenda Elezewe",
                            hintStyle: GoogleFonts.workSans(
                                fontSize: fonte,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4F709C),
                                decoration: TextDecoration.none),
                            suffixIcon: Icon(
                              Icons.person_outline,
                              size: 25,
                              color: Color(0xFF4F709C),
                            ))),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Colors.white,
                    child: Text(
                      'Full Name',
                      style: GoogleFonts.workSans(
                          fontSize: fonte,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4F709C),
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: w * 0.9,
                  height: h * 0.07,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF4F709C), width: 1),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 3, top: 3, left: 25),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Joenda123",
                            hintStyle: GoogleFonts.workSans(
                                fontSize: fonte,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4F709C),
                                decoration: TextDecoration.none),
                            suffixIcon: Icon(
                              Icons.person_outline,
                              size: 25,
                              color: Color(0xFF4F709C),
                            ))),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Colors.white,
                    child: Text(
                      'User Name',
                      style: GoogleFonts.workSans(
                          fontSize: fonte,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4F709C),
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: w * 0.9,
                  height: h * 0.07,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF4F709C), width: 1),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 3, top: 3, left: 25),
                    child: TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "joendaelezewe@gmail.com",
                            alignLabelWithHint: true,
                            hintStyle: GoogleFonts.workSans(
                                fontSize: fonte,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4F709C),
                                decoration: TextDecoration.none),
                            suffixIcon: Icon(
                              Icons.email_outlined,
                              size: 25,
                              color: Color(0xFF4F709C),
                            ))),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Colors.white,
                    child: Text(
                      'Email',
                      style: GoogleFonts.workSans(
                          fontSize: fonte,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4F709C),
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: w * 0.9,
                  height: h * 0.07,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF4F709C), width: 1),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 3, top: 3, left: 25),
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "*********",
                            hintStyle: GoogleFonts.workSans(
                                fontSize: fonte,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4F709C),
                                decoration: TextDecoration.none),
                            suffixIcon: Icon(
                              Icons.password,
                              size: 25,
                              color: Color(0xFF4F709C),
                            ))),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Colors.white,
                    child: Text(
                      'Password',
                      style: GoogleFonts.workSans(
                          fontSize: fonte,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4F709C),
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 5),
              child: Container(
                width: Get.width * 1,
                height: Get.height * 0.06,
                decoration: BoxDecoration(
                  // border: Border.all(width: 3.0),R
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF4F709C),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Confirm",
                    style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
