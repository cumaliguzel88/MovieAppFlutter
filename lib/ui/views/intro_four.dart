import 'package:cumax/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroFour extends StatefulWidget {
  const IntroFour({super.key});

  @override
  State<IntroFour> createState() => _IntroFourState();
}

class _IntroFourState extends State<IntroFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //info text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Text(
                "Let's Start",
                style: TextStyle(
                    color: colorTextWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Container(
                width: double.infinity,
                height: 400,
                child: Lottie.network(
                    "https://lottie.host/b8e85960-6545-4d18-b5bf-38fbfc248e80/ZFT54peDEx.json")),
          ],
        ),
      ),
    );
  }
}
