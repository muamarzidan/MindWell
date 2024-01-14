import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StepPage extends StatefulWidget {
  const StepPage({super.key});

  @override
  State<StepPage> createState() => _StepPageState();
}

class _StepPageState extends State<StepPage> {
  final PageController _controller = PageController();

  bool onLastPage = false;
  bool onFirstPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                  onFirstPage = (index == 0);
                });
              },
              children: const [
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                            'assets/images/main/introPage/IntroPage1.png'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Helping you provide the best counseling services",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "With the help of an experienced psychologist",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF605F5F)),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                            'assets/images/main/introPage/IntroPage2.png'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Make yourself more calm and comfortable",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "The feeling of comfort comes because you can do the things you like",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF605F5F)),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                            'assets/images/main/introPage/IntroPage3.png'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Online mental health test",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Knowing your current condition will make you better",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF605F5F)),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: const Alignment(0, 0.45),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SlideEffect(
                  dotWidth: 12.0,
                  dotHeight: 12.0,
                  dotColor: const Color(0xFFF1A700).withOpacity(0.5),
                  activeDotColor: const Color(0xFFF1A700)),
            ),
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  onFirstPage
                      ? GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(2);
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF656565),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: const Text(
                            "Back",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF656565),
                            ),
                          ),
                        ),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/login');
                          },
                          child: const Text(
                            "Done",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF0065FA),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF0065FA),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
