import 'package:flutter/material.dart';
import 'package:smart_thrift/core/theme/app_pallete.dart';
import 'package:smart_thrift/features/introduction_screen/presentation/widgets/intro_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: const [
                IntroScreen(
                  svgUrl: 'assets/images/quick_loan.svg',
                  header: 'Quick Loan',
                  description:
                      "A very descriptive text about the service. A very descriptive text about the service.",
                ),
                IntroScreen(
                  svgUrl: 'assets/images/savings.svg',
                  header: 'Savings',
                  description:
                      "A very descriptive. A very descriptive text about the service.",
                ),
                IntroScreen(
                  svgUrl: 'assets/images/interest.svg',
                  header: 'Intrest',
                  description:
                      "A very descriptive text about the service. A very descriptive text about the service.",
                ),
              ],
            ),
            Container(
              alignment: const Alignment(-1, .75),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const WormEffect(activeDotColor: AppPallete.primary),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppPallete.primary,
                      foregroundColor: AppPallete.white),
                  child: const Text("Login"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
