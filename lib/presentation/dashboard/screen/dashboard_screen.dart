import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_management/presentation/dashboard/screen/homeScreen.dart';
import 'package:stock_management/presentation/dashboard/widgets/bottom_navigationbar.dart';
import 'package:stock_management/presentation/history/screen/history_screen.dart';
import 'package:stock_management/presentation/pick_page/screen/picking_screen.dart';
import 'package:stock_management/presentation/profile/profile_history_screen.dart';
import 'package:stock_management/presentation/profile/screen/profile_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List _widgetOptions = [
    HomeScreen(),
    ProfileScreen(),
    PickingPageScreen(),
    HistoryScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 2,
        flexibleSpace: Container(
          height: 160,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF006064), Color(0xFF006064)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(10.0, 34.0, 8.0, 2.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/images/menu.png',
                            width: 25,
                            height: 30,
                            color: Colors.white,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 7),
                    Padding(
                      padding:  const EdgeInsets.all(0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const SizedBox(height: 5),
                          Text(
                            'Welcome',
                            style: GoogleFonts.cairo(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1.0),
                            child: Text(
                              'MS.SABA',
                              style: GoogleFonts.cairo(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // IconButton(
                //   icon: const Icon(
                //     Icons.notifications,
                //     color: Colors.white,
                //     size: 40,
                //   ),
                //   onPressed: () {},
                // ),
              ],
            ),
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onTabTapped: _onItemTapped,
      ),
    );
  }
}
