import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:stock_management/presentation/details/screen/details_screen.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key? key}) : super(key: key);

  final TextStyle historyTextStyle = GoogleFonts.cairo(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  DateTime? startDate;
  DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Picking History',
                    style: widget.historyTextStyle,
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
            TabBar(
              tabs: const [
                Tab(
                  text: 'Previous History',
                ),
                Tab(
                  text: 'Today History',
                ),
              ],
              labelColor: const Color(0xFF006064),
              labelStyle: GoogleFonts.cairo(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildPreviousHistory(context),
                  _buildHistoryItem(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryItem(BuildContext context) {
    return ListView(
      children: [
        _buildHistoryItemContainer(context),
        _buildHistoryItemContainer(context),
        _buildHistoryItemContainer(context),
        _buildHistoryItemContainer(context),
        _buildHistoryItemContainer(context),
        _buildHistoryItemContainer(context),
      ],
    );
  }

  Widget _buildHistoryItemContainer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 150, 149, 149),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'P-#542651',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF006064),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/dashboard_1.png'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'Materials',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Flexible(
              child:  Container(
                width: 105,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: const Color(0xFF006064),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'View All',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }

  Widget _buildPreviousHistory(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    width: 20,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101),
                        );
                        if (pickedDate != null) {
                          setState(() {
                            startDate = pickedDate;
                          });
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          startDate == null
                              ? Text('Start Date',
                                  style:
                                      GoogleFonts.cairo(color: Colors.black54))
                              : Text(
                                  DateFormat('yyyy-MM-dd').format(startDate!),
                                  style: const TextStyle(color: Colors.black54),
                                ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Image(
                            image: AssetImage('assets/images/calendar.png'),
                            height: 15,
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101),
                        );

                        if (pickedDate != null) {
                          setState(() {
                            endDate = pickedDate;
                          });
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          endDate == null
                              ? Text('End Date',
                                  style:
                                      GoogleFonts.cairo(color: Colors.black54))
                              : Text(
                                  DateFormat('yyyy-MM-dd').format(endDate!),
                                  style: const TextStyle(color: Colors.black54),
                                ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Image(
                            image: AssetImage('assets/images/calendar.png'),
                            height: 15,
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: _buildHistoryItem(context),
          ),
        ],
      ),
    );
  }
}
