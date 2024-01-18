import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_management/data/controller/location_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // List<String> locations = [
  //   'Warehouse 1',
  //   'Warehouse 2',
  //   'Warehouse 3',
  //   'Warehouse 4'
  // ];
  String? selectedLocation;
  int quantity = 80;
  String barcode = '';

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool cameraInitialized = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Add New Pick',
                  style: GoogleFonts.cairo(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'P-#542651',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF006064),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/Pin.png',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Location',
                              style: GoogleFonts.cairo(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 9),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Scan QR For Location',
                        labelStyle: GoogleFonts.cairo(
                          fontSize: 14.0,
                        ),
                        border: const OutlineInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 15,
                        ),
                        hintStyle: GoogleFonts.cairo(fontSize: 8.0),
                        hintText: 'Scan QR For Location',
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
                        _scanQRCode().then((result) {});
                      },
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/scanner.png',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Barcode',
                              style: GoogleFonts.cairo(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 9),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Scan Barcode',
                        labelStyle: GoogleFonts.cairo(
                          fontSize: 14.0,
                        ),
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
                              image: AssetImage(
                                'assets/images/scan.png',
                              ),
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 25,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 5),
                                // Text(
                                //   'Shopping Cart',
                                //   style: TextStyle(
                                //     fontSize: 18,
                                //     color: Colors.black,
                                //     fontWeight: FontWeight.bold,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // _buildShoppingCart(),
                  // _buildOrderNote(),
                  // _orderSummary(),
                  // _elevatedButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _scanQRCode() async {
    try {
      final scannedBarcode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );
      if (scannedBarcode != '-1') {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String? token = prefs.getString('token');
        print('Saved Bearer Token: $token');
        LocationController locationController = Get.put(LocationController());
        locationController.scanLocation('');
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Success'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Your pick has been completed successfully!'),
                  const SizedBox(height: 10),
                  Text(
                    'Scanned QR Code: $scannedBarcode',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
        setState(() {
          barcode = scannedBarcode;
        });
      } else {
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Oops'),
              content: const Text(
                  'QR Code scanning canceled or encountered an error.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
        print('QR Code scanning canceled or encountered an error.');
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Oops'),
            content: Text('Error scanning QR Code: $e'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
      print('Error scanning QR Code: $e');
    }
  }

  Future<void> _scanBarcode() async {
    try {
      final scannedBarcode = await FlutterBarcodeScanner.scanBarcode(
        '#004297',
        'Cancel',
        true,
        ScanMode.DEFAULT,
      );
      if (scannedBarcode != '-1') {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String? token = prefs.getString('token');
        print('Saved Bearer Token: $token');
        LocationController locationController = Get.put(LocationController());
        locationController.scanLocation('');
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Success'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Your pick has been completed successfully!'),
                  const SizedBox(height: 10),
                  Text(
                    'Scanned Barcode: $scannedBarcode',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
        setState(() {
          barcode = scannedBarcode;
        });
      } else {
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Oops'),
              content: const Text(
                  'Barcode scanning canceled or encountered an error.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
        print('Barcode scanning canceled or encountered an error.');
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Oops'),
            content: Text('Error scanning barcode: $e'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
      print('Error scanning barcode: $e');
    }
  }
}
