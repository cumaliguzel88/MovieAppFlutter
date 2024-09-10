import 'package:cumax/ui/theme/colors.dart';
import 'package:cumax/ui/views/intro_four.dart';
import 'package:cumax/ui/views/intro_one.dart';
import 'package:cumax/ui/views/intro_three.dart';
import 'package:cumax/ui/views/intro_two.dart';
import 'package:cumax/ui/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  //controller for track
  PageController _contoller = PageController();
  //if we r in last page change the text done
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            allowImplicitScrolling: false,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: [
              //pages
              IntroOne(),
              IntroTwo(),
              IntroThree(),
              IntroFour(),
            ],
            controller: _contoller,
          ),
          //dote indicators
          Container(
              alignment: const Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SmoothPageIndicator(
                    controller: _contoller,
                    count: 4,
                    effect: WormEffect(
                        dotColor: colorTextWhite, activeDotColor: colorYellow),
                  ),
                  //next or done text button
                  onLastPage
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: colorYellow),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BottomNavbar()));
                          },
                          child: const Text(
                            "Done",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22),
                          ))
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: colorYellow),
                          onPressed: () {
                            _contoller.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
                            "Next",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22),
                          )),
                ],
              )),
        ],
      ),
    );
  }
}
