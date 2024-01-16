import 'package:flutter/material.dart';
import 'package:stock_management/data/model/on_board_modal.dart';
import 'package:stock_management/presentation/log_in/login_screen.dart';

final List<OnBoard> demoData = [
  OnBoard(
    image: "assets/images/on_boarding2.png",
    logo: "assets/images/logo.png",
    title: "Easily Scan\n and Pay",
    description:
        "Streamline your inventory control with Dose Portal,\nthe intuitive application designed to simplify warehouse\nmanagement for nurses",
  ),
  OnBoard(
    image: "assets/images/on_boarding3.png",
    logo: "assets/images/logo.png",
    title: "Your One-Stop\nSolution for Picking",
    description:
        "With its innovative features and user-friendly design,\nthe Dose Portal is the ideal solution for picking in any healthcare setting",
  ),
];

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    print('Skip button pressed');
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 100,
                  width: 140,
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: demoData.length,
                  controller: _pageController,
                  itemBuilder: (context, index) => OnBoardContent(
                    title: demoData[index].title,
                    description: demoData[index].description,
                    image: demoData[index].image,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0.0, left: 15),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Indicator(
                    length: demoData.length,
                    currentIndex: currentIndex,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF006064),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontFamily: "HappyMonkey",
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF006064),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(image),
        const Spacer(),
      ],
    );
  }
}

class Indicator extends StatelessWidget {
  final int length;
  final int currentIndex;
  final Axis direction;
  final double radius;
  final double animationDuration;
  final Color activeColor;
  final Color inactiveColor;

  const Indicator({
    required this.length,
    required this.currentIndex,
    this.direction = Axis.horizontal,
    this.radius = 10.0,
    this.animationDuration = 300,
    this.activeColor = const Color(0xFF006064),
    this.inactiveColor = const Color(0xFF006064),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        length,
        (index) => buildDot(index, context),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: currentIndex == index ? activeColor : inactiveColor,
      ),
    );
  }
}
