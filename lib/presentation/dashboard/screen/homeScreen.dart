import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 250, top: 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DASHBOARD',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
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
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '3',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Total Picking',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      ClipOval(
                        child: Container(
                          width: 58,
                          height: 58,
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
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width / 2.5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFF006064), width: 1),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ClipOval(
                            child: Container(
                              width: 58,
                              height: 58,
                              color: const Color(0xFF006064).withOpacity(0.1),
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
                    const SizedBox(width: 43),
                    Container(
                      width: size.width / 2.5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFF006064), width: 1),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ClipOval(
                            child: Container(
                              width: 58,
                              height: 58,
                              color: const Color(0xFF006064).withOpacity(0.1),
                              child: Image.asset(
                                'assets/images/picking_history.png',
                                width: 35,
                                height: 35,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                  decoration: BoxDecoration(
                    // color: const Color.fromARGB(255, 226, 248, 247),
                    border:
                        Border.all(color: const Color(0xFF006064), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
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
                          width: 58,
                          height: 58,
                          color: const Color(0xFF006064).withOpacity(0.9),
                          child: Center(
                            child: Image.asset(
                              'assets/images/material.png',
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
            ],
          ),
        ),
      ],
    );
  }
}
