import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_management/data/controller/login_controller.dart';
import 'package:stock_management/presentation/dashboard/screen/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              Stack(
                children: [
                  ClipPath(
                    clipper: DrawClip(),
                    child: Container(
                      height: size.height / 2.4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF006064), Color(0xFF006064)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
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
                        Text(
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
                  SizedBox(
                    height: 10,
                  ),
                  Positioned(
                    bottom: -5.9,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Welcome!",
                            style: GoogleFonts.lato(
                              color: Color(0xFF006064),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Please enter the details below to continue",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                    fillColor: Colors.grey[200],
                    hintText: 'Email Address',
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                    fillColor: Colors.grey[200],
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  print("Forgot Password tapped");
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 210),
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
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DashBoardScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    primary: Color(0xFF006064),
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
              // Center(
              //   child: Text(
              //     "OR",
              //     style: GoogleFonts.mukta(
              //       color: Colors.grey,
              //       fontSize: 18,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              // SizedBox(height: 10),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       social('https://i.postimg.cc/HxFdTLVG/google-plus.png'),
              //       social('https://i.postimg.cc/0y4tWK3q/facebook-2.png'),
              //       social('https://i.postimg.cc/GpsXZhwT/twitter-3.png'),
              //       social('https://i.postimg.cc/7YYmqNrk/linkedin.png'),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 30),
              // Center(
              //   child: Column(
              //     children: [
              //       Text(
              //         "Don't have an account?",
              //         style: GoogleFonts.mukta(
              //           fontSize: 18,
              //           color: Colors.grey,
              //           fontWeight: FontWeight.w500,
              //         ),
              //       ),
              //       GestureDetector(
              //         onTap: () {
              //           print("Sign Up tapped");
              //         },
              //         child: Text(
              //           "Sign Up",
              //           style: GoogleFonts.mukta(
              //             fontSize: 18,
              //             color: Color(0xffff5f6d),
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget social(String url) {
  return Material(
    borderRadius: BorderRadius.circular(8),
    elevation: 10,
    child: Padding(
      padding: EdgeInsets.all(8),
      child: Image.network(
        url,
        height: 28,
        width: 28,
      ),
    ),
  );
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.1, size.height - 50);
    path.lineTo(size.width * 0.9, size.height - 50);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
