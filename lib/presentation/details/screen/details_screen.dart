import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_management/presentation/dashboard/screen/homeScreen.dart';
import 'package:stock_management/presentation/dashboard/widgets/bottom_navigationbar.dart';
import 'package:stock_management/presentation/history/screen/history_screen.dart';
import 'package:stock_management/presentation/pick_page/screen/picking_screen.dart';
import 'package:stock_management/presentation/profile/screen/profile_screen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _selectedIndex = 0;

  static const List _widgetOptions = [
    // HomeScreen(),
    ProfileScreen(),
    PickingPageScreen(),
    // HistoryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 1,
        flexibleSpace: Container(
          height: 150,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF006064), Color(0xFF006064)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35.0),
              bottomRight: Radius.circular(35.0),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(10.0, 34.0, 8.0, 2.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            'Welcome',
                            style: GoogleFonts.cairo(
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add New Pick',
                          style: GoogleFonts.cairo(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      'P-#542651',
                      style: GoogleFonts.cairo(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF006064),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 121, 121, 121),
                                width: 0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                width: size.width,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                margin: const EdgeInsets.only(),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'ARIPIPRAZOLE 10 MG TABLET ${index + 1}',
                                          style: GoogleFonts.cairo(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 0),
                                          child: Text(
                                            'ORDER Qty:80 pcs\nDelivered Qty:80pcs',
                                            style: GoogleFonts.cairo(
                                              fontSize: 13,
                                              color: const Color.fromARGB(
                                                  255, 121, 121, 121),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Container(
                                          margin: const EdgeInsets.only(top: 1),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Code:00004',
                                                style: GoogleFonts.cairo(
                                                  fontSize: 12,
                                                  color:
                                                      const Color(0xFF006064),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 2,
                                              ),
                                              Text(
                                                '12:42 PM',
                                                style: GoogleFonts.cairo(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Divider();
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 25,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.note,
                                    color: Color(0xFF006064),
                                    size: 16,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Order Note',
                                    style: GoogleFonts.cairo(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 121, 121, 121),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: 'Enter your order note',
                            border: InputBorder.none,
                          ),
                          style: GoogleFonts.cairo(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          onChanged: (value) {
                            print('Order Note: $value');
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 150,
                        width: size.width,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 121, 121, 121),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Summary',
                              style: GoogleFonts.cairo(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Total Materials: ',
                                      style: GoogleFonts.cairo(
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '5 ',
                                      style: GoogleFonts.cairo(
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Total Quantity: ',
                                      style: GoogleFonts.cairo(
                                          color: Colors.black),
                                    ),
                                    Text(
                                      ' 100',
                                      style: GoogleFonts.cairo(
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Start Time: ',
                                      style: GoogleFonts.cairo(
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '100',
                                      style: GoogleFonts.cairo(
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'End Time: ',
                                      style: GoogleFonts.cairo(
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '100',
                                      style: GoogleFonts.cairo(
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/management');
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF006064),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onTabTapped: _onTabTapped,
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
