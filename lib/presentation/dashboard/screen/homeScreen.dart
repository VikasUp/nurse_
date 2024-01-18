import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final TextStyle dashboardTextStyle = GoogleFonts.cairo(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Container(
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                            const  EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DASHBOARD',
                                style: dashboardTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 248, 247),
                      border:
                          Border.all(color: const Color(0xFF006064), width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '3',
                              style: GoogleFonts.poppins(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                           const SizedBox(height: 4),
                           const Text(
                              'Total Picking',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily:
                                    'SF Pro Display', 
                              ),
                            ),
                          ],
                        ),
                        ClipOval(
                          child: Container(
                            width: 60,
                            height: 60,
                            color: const Color(0xFF006064).withOpacity(0.9),
                            child: Center(
                              child: Image.asset(
                                'assets/images/dashboard_1.png',
                                width: 35,
                                height: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1, vertical: 5),
                            child: Container(
                              width: size.width / 2.3,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 30),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFF006064), width: 1),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                 const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'New\nPick',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ClipRect(
                                    child: Container(
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                        color:
                                           const Color.fromARGB(255, 135, 242, 246)
                                                .withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Image.asset(
                                        'assets/images/new_pick.png',
                                        width: 35,
                                        height: 35,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Flexible(
                            child: Container(
                              width: size.width / 2.3,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 30),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFF006064), width: 1),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                 const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                          'Picking\nHistory',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ClipRect(
                                    child: Container(
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                        color:
                                          const  Color.fromARGB(255, 135, 242, 246)
                                                .withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Image.asset(
                                        'assets/images/picking_history.png',
                                        width: 35,
                                        height: 35,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 10),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xFF006064), width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const  Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Material Check',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        ClipOval(
                          child: Container(
                            width: 60,
                            height: 60,
                            color: const Color(0xFF006064).withOpacity(0.9),
                            child: Center(
                              child: Image.asset(
                                'assets/images/material.png',
                                width: 40,
                                height: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
