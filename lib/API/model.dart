



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:login_niche2/API/API.dart';
import 'package:login_niche2/API/model.dart';
import 'package:login_niche2/SELLER/sellerServices/services.dart';
import 'package:login_niche2/SELLER/sellerServices/widgets/stackedContainer.dart';
import 'package:login_niche2/SELLER/sellerServices/widgets/stackedDropdown.dart';
import 'package:login_niche2/utils/helperFunctions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';


class Service {
  int? serviceId;
  int? sellerId;
  int? categoryId;
  String? serviceTitle;
  String? serviceDescription;
  String? servicePrice;
  int? duration;
  String? serviceImage;

  Service({
    this.serviceId,
    this.sellerId,
    this.categoryId,
    this.serviceTitle,
    this.serviceDescription,
    this.servicePrice,
    this.duration,
    this.serviceImage,
  });

  Service.fromJson(Map<String, dynamic> json) {
    serviceId = json['service_id'];
    sellerId = json['seller_id'];
    categoryId = json['category_id'];
    serviceTitle = json['service_title'];
    serviceDescription = json['service_description'];
    servicePrice = json['service_price'];
    duration = json['duration'];
    // Update the serviceImage property to handle image loading
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['service_id'] = this.serviceId;
    data['seller_id'] = this.sellerId;
    data['category_id'] = this.categoryId;
    data['service_title'] = this.serviceTitle;
    data['service_description'] = this.serviceDescription;
    data['service_price'] = this.servicePrice;
    data['duration'] = this.duration;
    data['image'] = this.serviceImage; // Assuming serviceImage is in base64
    return data;
  }
}




class SubCategory {
  int? subCategoryId;
  String? subCategoryName;
  int? parentId;
  String? subCategoryImage;

  SubCategory(
      {this.subCategoryId,
      this.subCategoryName,
      this.parentId,
      this.subCategoryImage});

  SubCategory.fromJson(Map<String, dynamic> json) {
    subCategoryId = json['subCategory_id'];
    subCategoryName = json['subCategory_name'];
    parentId = json['parent_id'];
    subCategoryImage = json['subCategory_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subCategory_id'] = this.subCategoryId;
    data['subCategory_name'] = this.subCategoryName;
    data['parent_id'] = this.parentId;
    data['subCategory_image'] = this.subCategoryImage;
    return data;
  }
}

class Category {
  int? categoryId;
  String? categoryName;
  String? categoryImage;

  Category({this.categoryId, this.categoryName, this.categoryImage});

  Category.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryImage = json['category_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['category_name'] = this.categoryName;
    data['category_image'] = this.categoryImage;
    return data;
  }
}