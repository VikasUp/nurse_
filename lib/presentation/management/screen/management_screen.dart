import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';

class ManagementScreen extends StatefulWidget {
  ManagementScreen({Key? key}) : super(key: key);

  final TextStyle historyTextStyle = GoogleFonts.cairo(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  @override
  _ManagementScreenState createState() => _ManagementScreenState();
}

class _ManagementScreenState extends State<ManagementScreen> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Material Check',
                  style: widget.historyTextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                          const  EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/scanner.png',
                              width: 20,
                              height: 20,
                            ),
                           const SizedBox(width: 10),
                            Text(
                              'Material No./Barcode',
                              style: GoogleFonts.cairo(
                                  fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Scan Barcode',
                        border: const OutlineInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 10.0,
                        ),
                        hintStyle: const TextStyle(fontSize: 10.0),
                        hintText: 'Scan Barcode',
                        suffixIcon: GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 10,
                            width: 10,
                            child: const Image(
                              image: AssetImage('assets/images/scan.png'),
                              fit: BoxFit.contain,
                              width: 10,
                              height: 10,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        _scanBarcode().then((result) {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'managementPage');
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF006064),
      ),
    );
  }

  Future<void> _scanBarcode() async {
    try {
      final scannedBarcode = await FlutterBarcodeScanner.scanBarcode(
        '#004297',
        'Cancel',
        false,
        ScanMode.DEFAULT,
      );

      if (scannedBarcode != '-1') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Success'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your pick has been completed successfully!'),
                  SizedBox(height: 10),
                  Text('Scanned Barcode: $scannedBarcode',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
        setState(() {
          barcode = scannedBarcode;
        });
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Oops'),
              content:
                  Text('Barcode scanning canceled or encountered an error.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
        print('Barcode scanning canceled or encountered an error.');
      }
    } catch (e) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Oops'),
            content: Text('Error scanning barcode: $e'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      print('Error scanning barcode: $e');
    }
  }
}
