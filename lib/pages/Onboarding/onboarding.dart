import 'package:flutter/material.dart';

import '../home.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int _currentPage = 0;
  final _pageController = PageController();
  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
        title: "Consult with a doctor \n you trust", image: "assets/img.png"),
    OnboardingItem(
        title: "Find a lot of specialist \n doctors in one place",
        image: "assets/img2.png"),
    OnboardingItem(
        title: "Get connected on our Online \n Consultation",
        image: "assets/img3.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_currentPage < onboardingItems.length - 1) {
            _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn);
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Home()));
          }
        },
        backgroundColor: const Color.fromRGBO(25, 154, 142, 100),
        child: const Icon(Icons.arrow_forward),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black12,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingItems.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final item = onboardingItems[index];
                    return Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: Image.asset(item.image)),
                        const SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                          ),
                          child: Text(
                            item.title,
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Row(
              children: List.generate(onboardingItems.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 18, left: 10),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 4,
                    width: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: _currentPage == index
                          ? const Color(0xFF19A98E)
                          : Colors.grey.shade300,
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

class OnboardingItem {
  final String title;
  final String image;

  OnboardingItem({required this.title, required this.image});
}
