import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_management/data/const_manager/api_services.dart';
import 'package:stock_management/data/const_manager/massage_string.dart';
import 'package:stock_management/util/app_routes.dart';

class LoginController extends GetxController {

  final user_emailController = TextEditingController().obs;
  final user_passwordController = TextEditingController().obs;
  RxBool loading = false.obs;
  bool get isLoggedIn => _isLoggedIn;
  bool _isLoggedIn = false;
  static const String _isLoggedInKey = 'isLoggedIn';

  Future<void> saveLoginStatus(bool isLoggedIn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isLoggedInKey, isLoggedIn);
  }

  Future<bool> getLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isLoggedInKey) ?? false;
  }

  Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    print('Bearer Token: $token');
  }

  void loginApi(BuildContext context) async {
    loading.value = true;
    try {
      final response = await http.post(
        Uri.parse('${Constants.baseUrl}${Constants.login}'),
        body: {
          'email': user_emailController.value.text,
          'password': user_passwordController.value.text,
        },
      );
      print('=====');
      print(response.statusCode);
      print('=====');
      print('API Response: ${response.statusCode}');
      print('API Body: ${response.body}');
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        if (responseData.containsKey('data') && responseData['data'] != null) {
          final Map<String, dynamic> data = responseData['data'];
          if (data.containsKey('token') && data['token'] != null) {
            final String token = data['token'];
            await saveLoginStatus(true);
            await saveToken(token);
            Get.offNamed(AppRoutes.dashBoard);
            print('Token saved successfully');
             Get.snackbar(
              'Success',
              'Logged in successfully!',
              snackPosition: SnackPosition.TOP,
              backgroundColor: Color(0xFF006064),
              colorText: Colors.white,
            );
          } else {
            print('Token is null or not present in the data.');
          }
        } else {
          print('Data is null or not present in the response.');
        }
      } else {
        print('Error Response: ${response.body}');

        if (response.statusCode == 401) {
          Get.snackbar(
            'Oops!',
            'You are unauthorized. Please check your credentials.',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
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
      }
    } catch (e) {
      print('Exception: $e');
      Get.snackbar(MessageString.kException, e.toString());
    } finally {
      loading.value = false;
    }
  }
  
}
