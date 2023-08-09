import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:login_niche2/SELLER/sellerServices/services.dart';

class AddService extends StatefulWidget {
  const AddService({Key? key}) : super(key: key);


  @override
  State<AddService> createState() => _AddServiceState();

}

class _AddServiceState extends State<AddService> {

  int num=0;
  XFile ? image;
  late PickedFile _imageFile;
  final ImagePicker picker = ImagePicker();
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      print("Helooooooooooooooooooooooooooooooooooooo");
      image = img;
    });
  }
  String dropdownvalueRole = 'Saloon';
bool check = false;
  @override
  Widget build(BuildContext context) {

    String dropdownvalueRole1 = 'Hair Cutting';
    String dropdownvalueRole2 = 'House Cleaning';
    String dropdownvalueRole3 = 'Car Repairing';

    var categories = ["Saloon", "Cleaning","Repairing"];
    var Saloon = ["Hair Cutting","Head Massage"];
    var Cleaning = ["House Cleaning", " Sofa Cleaning"];
    var Repairing = ["Car Repairing", "Furniture Repairing"];

int a=3;
int b=2;
    List subcategories =
    [
      ["Hair Cutting","Head Massage"],
      [ "House Cleaning", " Sofa Cleaning"],
      [ "Car Repairing", "Furniture Repairing"],
    ];


    Widget category () {
    return
//       DropdownButton(
//
//         value: categories[0],
//         items: categories.map((category) { return DropdownMenuItem(
// alignment: Alignment.centerLeft,
//           child: Text(category),value: category,);}).toList(), onChanged: (category){null;});


      DropdownButtonFormField<String>(
      isExpanded: true,
      hint: Text(
        "Buyer/Seller",
        style: TextStyle(
          color: Colors.black54,
          fontSize: 15,
        ),
      ),
      value: dropdownvalueRole,
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: Colors.black54,
      ),
      style: TextStyle(
        fontSize: 15,
        color: Colors.black,
      ),
      decoration: InputDecoration(
       border: InputBorder.none,
        filled: true,
        fillColor: Colors.white,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        //   borderSide: BorderSide.none,
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        //   borderSide: BorderSide(
        //     color: Theme.of(context).primaryColor,
        //     width: 2.0,
        //   ),
        // ),
      ),
      items: categories.map((String item) {
        return DropdownMenuItem<String>(
          alignment: Alignment.topLeft,
          value: item,
          child: Text(
            item,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalueRole = newValue!;
          print(dropdownvalueRole);
          check=true;
        });
      },
    );
    }

    Widget categoryL (String val) {

      for(int i=0;i<categories.length;i++)
        {

          if(val==categories[i])
            {
              num=i;
              print(val);
              print(num);
              print(dropdownvalueRole);
            }
        }
      return
//       DropdownButton(
//
//         value: categories[0],
//         items: categories.map((category) { return DropdownMenuItem(
// alignment: Alignment.centerLeft,
//           child: Text(category),value: category,);}).toList(), onChanged: (category){null;});

num==0?
        DropdownButtonFormField<String>(
          isExpanded: true,
          hint: Text(
            "Buyer/Seller",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
            ),
          ),
          value: dropdownvalueRole1,
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black54,
          ),
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
            contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            //   borderSide: BorderSide.none,
            // ),
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            //   borderSide: BorderSide(
            //     color: Theme.of(context).primaryColor,
            //     width: 2.0,
            //   ),
            // ),
          ),

          items: Saloon.map((String item) {
            return DropdownMenuItem<String>(
              alignment: Alignment.topLeft,
              value: item,
              child: Text(
                item,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalueRole1 = newValue!;

            });
          },
        ): num == 1 ?
DropdownButtonFormField<String>(
  isExpanded: true,
  hint: Text(
    "Buyer/Seller",
    style: TextStyle(
      color: Colors.black54,
      fontSize: 15,
    ),
  ),
  value: dropdownvalueRole2,
  icon: Icon(
    Icons.keyboard_arrow_down,
    color: Colors.black54,
  ),
  style: TextStyle(
    fontSize: 15,
    color: Colors.black,
  ),
  decoration: InputDecoration(
    border: InputBorder.none,
    filled: true,
    fillColor: Colors.white,
    contentPadding:
    const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
    // border: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(10.0),
    //   borderSide: BorderSide.none,
    // ),
    // focusedBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(10.0),
    //   borderSide: BorderSide(
    //     color: Theme.of(context).primaryColor,
    //     width: 2.0,
    //   ),
    // ),
  ),

  items: Cleaning.map((String item) {
    return DropdownMenuItem<String>(
      alignment: Alignment.topLeft,
      value: item,
      child: Text(
        item,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    );
  }).toList(),
  onChanged: (String? newValue) {
    setState(() {
      dropdownvalueRole2 = newValue!;
      check=true;
    });
  },
):
DropdownButtonFormField<String>(
  isExpanded: true,
  hint: Text(
    "Buyer/Seller",
    style: TextStyle(
      color: Colors.black54,
      fontSize: 15,
    ),
  ),
  value: dropdownvalueRole3,
  icon: Icon(
    Icons.keyboard_arrow_down,
    color: Colors.black54,
  ),
  style: TextStyle(
    fontSize: 15,
    color: Colors.black,
  ),
  decoration: InputDecoration(
    border: InputBorder.none,
    filled: true,
    fillColor: Colors.white,
    contentPadding:
    const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
    // border: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(10.0),
    //   borderSide: BorderSide.none,
    // ),
    // focusedBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(10.0),
    //   borderSide: BorderSide(
    //     color: Theme.of(context).primaryColor,
    //     width: 2.0,
    //   ),
    // ),
  ),

  items: Repairing.map((String item) {
    return DropdownMenuItem<String>(
      alignment: Alignment.topLeft,
      value: item,
      child: Text(
        item,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    );
  }).toList(),
  onChanged: (String? newValue) {
    setState(() {
      dropdownvalueRole3 = newValue!;
      check=true;
    });
  },
);
    }
    Widget categoryLL () {

      return


        DropdownButtonFormField<String>(
          isExpanded: true,
          enableFeedback: false,
          hint: Text(
            "Buyer/Seller",
            style: TextStyle(
              color: Colors.black26,
              fontSize: 15,
            ),
          ),
          value: dropdownvalueRole1,
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black26,
          ),
          style: TextStyle(
            fontSize: 15,
            color: Colors.black26,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
            contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            //   borderSide: BorderSide.none,
            // ),
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            //   borderSide: BorderSide(
            //     color: Theme.of(context).primaryColor,
            //     width: 2.0,
            //   ),
            // ),
          ),
          items: Saloon.map((String item) {
            return DropdownMenuItem<String>(
              alignment: Alignment.topLeft,
              value: item,
              child: Text(
                item,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black26,
                ),
              ),
            );
          }).toList(),
          onChanged: null,
        );
    }

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
    void takePhoto(ImageSource source) async{
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
            Text("Choose Profile Photo",style: GoogleFonts.dmSans(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                color: Color(0xFF323B60),
                decoration: TextDecoration.none),),
            SizedBox(
              height: h * 0.01,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [Column(
                children: [
                  IconButton(onPressed: (){getImage(ImageSource.camera);}, icon: Icon(Icons.camera_alt),tooltip: "Camera",iconSize: h*0.04+w*0.04,),Text("Camera")
                ],
              ),Column(
                children: [
                  IconButton(onPressed: (){getImage(ImageSource.gallery);}, icon: Icon(Icons.image),tooltip: "Gallery",iconSize: h*0.04+w*0.04,),
                  Text("Gallery")],
              )],
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
                    "Add Service",
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
              child: image != null ?

              CircleAvatar(
                    radius: h * 0.05 + w * 0.05,
                    //backgroundColor: Colors.blue,




                    child: CircleAvatar(
                        radius: h * 0.045 + w * 0.045,
                        // backgroundColor: Colors.red,
                        backgroundImage: FileImage( File(image!.path),),
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
                                  onPressed: () {showModalBottomSheet(backgroundColor:Color(0xFFCEB290),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),context: context, builder: ((builder)=> bottomsheet()));},
                                )),
                          ),
                        ))):

              CircleAvatar(radius: h * 0.05 + w * 0.05,child: IconButton(onPressed: (){
    showModalBottomSheet(backgroundColor:Color(0xFFCEB290),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),context: context, builder: ((builder)=> bottomsheet()));
              },icon: Icon(Icons.camera_alt_outlined,),iconSize: 50))
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
                    padding: EdgeInsets.only(right: 3, top: 5, left: 15),
                    child: category()
                    // TextField(
                    //     decoration: InputDecoration(
                    //         border: InputBorder.none,
                    //        // hintText: "Category",
                    //         hintStyle: GoogleFonts.workSans(
                    //             fontSize: fonte,
                    //             fontWeight: FontWeight.w500,
                    //             color: Color(0xFF4F709C),
                    //             decoration: TextDecoration.none),
                    //         suffixIcon: Icon(
                    //           GestureDetector(onTap: )
                    //
                    //
                    //           Icons.arrow_drop_down_sharp,
                    //           size: 35,
                    //           color: Color(0xFF4F709C),
                    //         ))),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Colors.white,
                    child: Text(
                      'Category',
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
                    border: check ? Border.all(color: Color(0xFF4F709C), width: 1):Border.all(color: Colors.black38, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(right: 3, top: 5, left: 15),
                      child: check ? categoryL(dropdownvalueRole):
                     categoryLL()

                  ),
                ),
                Positioned(
                  left: 35,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    color: Colors.white,
                    child: Text(
                      'Sub-Category',
                      style: GoogleFonts.workSans(
                          fontSize: fonte,
                          fontWeight: FontWeight.w500,
                          color:  check ? Color(0xFF4F709C): Colors.black38,
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
                            hintText: "49.99",
                            alignLabelWithHint: true,
                            hintStyle: GoogleFonts.workSans(
                                fontSize: fonte,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4F709C),
                                decoration: TextDecoration.none),
                            suffixIcon: Icon(
                              Icons.monetization_on_outlined,
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
                      'Price',
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
                           hintText: "25",
                            hintStyle: GoogleFonts.workSans(
                                fontSize: fonte,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4F709C),
                                decoration: TextDecoration.none),
                            suffixIcon: Icon(
                              Icons.percent_outlined,
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
                      'Discount',
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
                             hintText: "2 hour",
                            hintStyle: GoogleFonts.workSans(
                                fontSize: fonte,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4F709C),
                                decoration: TextDecoration.none),
                            suffixIcon: Icon(
                              Icons.access_time,
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
                      'Duration',
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
                  onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Services()));},
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
