import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_management/data/const_manager/sky_string.dart';
import 'package:stock_management/data/controller/login_controller.dart';
import 'package:stock_management/util/app_routes.dart';

class Validator {
  static bool isValidPassword(String password) {
    return password.length >= 6;
  }

  static bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegex.hasMatch(email);
  }
}

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var controller = Get.put(LoginController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _validatePassword(String? val) {
    if (val!.trim().isEmpty) {
      return SKYStrings.message.kEnterPassword;
    } else if (!Validator.isValidPassword(val)) {
      return SKYStrings.message.kEnterValidPassword;
    } else {
      return null;
    }
  }

  String? _validateEmail(String? val) {
    if (val!.trim().isEmpty) {
      return SKYStrings.message.kEnterEmail;
    } else if (!Validator.isValidEmail(val)) {
      return SKYStrings.message.kEnterValidEmail;
    } else {
      return null;
    }
  }

  Widget buildClippedContainer(Size size) {
    return Stack(
      children: [
        ClipPath(
          child: Container(
            height: size.height / 2.6,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF006064), Color(0xFF006064)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(60.0),
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height / 2,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/app_logo.png',
                height: 90,
                width: 90,
              ),
              const SizedBox(height: 10),
              const Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Positioned(
          bottom: -6.9,
          left: 0,
          right: 0,
          child: Center(
            child: Column(
              children: [
                Text(
                  "Welcome!",
                  style: GoogleFonts.cairo(
                    color: const Color(0xFF006064),
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Please enter the details below to continue",
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildClippedContainer(size),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1, vertical: 10),
                  child: TextFormField(
                    controller: controller.user_emailController.value,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                      fillColor: Colors.grey[200],
                      hintText: 'Email Address',
                      filled: true,
                    ),
                    // validator: (val) => _validateEmail(val),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextFormField(
                  controller: controller.user_passwordController.value,
                  obscureText: true,
                  decoration: InputDecoration(
                    border:
                        const UnderlineInputBorder(borderSide: BorderSide.none),
                    fillColor: Colors.grey[200],
                    hintText: 'Password',
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    filled: true,
                  ),
                  // validator: (val) => _validatePassword(val),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  print("Forgot Password tapped");
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 205),
                  child: Text(
                    "Forgot Password ?",
                    style: GoogleFonts.mukta(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 5),
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      controller.loginApi(context);
                      if (controller.isLoggedIn) {
                        Get.offNamed(AppRoutes.dashBoard);
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: const Color(0xFF006064),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Container(
                    height: 55,
                    child: Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.mukta(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
