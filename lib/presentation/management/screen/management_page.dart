import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManagementScreenPage extends StatefulWidget {
  ManagementScreenPage({super.key});

  final TextStyle manageTextStyle = GoogleFonts.cairo(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  @override
  _ManagementScreenPageState createState() => _ManagementScreenPageState();
}

class _ManagementScreenPageState extends State<ManagementScreenPage> {
  List<String> locations = [
    'Warehouse 1',
    'Warehouse 2',
    'Warehouse 3',
    'Warehouse 4'
  ];
  String? selectedLocation;
  int quantity = 80;
  String barcode = '';

  @override
  Widget build(BuildContext context) {
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
                    const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Text(
                              'MS.SABA',
                              style: TextStyle(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Result',
                  style: widget.manageTextStyle,
                ),
                const Text(
                  'P-#542652',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF006064),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'assets/images/th.jpeg',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Material Description',
                              style: GoogleFonts.cairo(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'The Point of using CELLCEPT 250MG CAPSULE is that it has a more -or-less normal distribuitioon of letters as opposed making it look like readbleEnglish.MAny Desktop publisghimg packages ',
                          style: GoogleFonts.cairo(
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Available Stock',
                          style: GoogleFonts.cairo(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Location',
                                    style: GoogleFonts.cairo(
                                      fontSize: 13,
                                      color: Color(0xFF006064),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    selectedLocation ?? 'Warehouse 1',
                                    style: GoogleFonts.cairo(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Quantity',
                                    style: GoogleFonts.cairo(
                                      color: const Color(0xFF006064),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '20 pcs',
                                    style: GoogleFonts.cairo(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
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
    );
  }
}
