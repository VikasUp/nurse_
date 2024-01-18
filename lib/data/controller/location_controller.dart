import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_management/data/const_manager/api_services.dart';
import 'package:stock_management/data/const_manager/massage_string.dart';
import 'package:http/http.dart' as http;

class LocationController extends GetxController {

  RxBool loading = false.obs;
  Future<void> scanLocation(String locationCode) async {
    loading.value = true;
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');

      if (token != null) {
        final response = await http.post(
          Uri.parse('${Constants.baseUrl}${Constants.locationScan}'),
          headers: {'Authorization': 'Bearer $token'},
          body: {
            'code': locationCode,
          },
        );
        print('API Response: ${response.statusCode}');
        print('API Body: ${response.body}');
        if (response.statusCode == 200) {
          print('Location scanned successfully!');
          Get.snackbar(
            'Success',
            'Data Fetched Successfully',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Color(0xFF006064),
            colorText: Colors.white,
          );
        } else {
          Get.snackbar(
            MessageString.kError,
            MessageString.kLogErrors,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
      } else {
        print('Token is null or not present in SharedPreferences.');
      }
    } catch (e) {
      print('Exception: $e');
      Get.snackbar(MessageString.kException, e.toString());
    } finally {
      loading.value = false;
    }
  }
  
}
