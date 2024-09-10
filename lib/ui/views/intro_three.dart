import 'package:cumax/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroThree extends StatefulWidget {
  const IntroThree({super.key});

  @override
  State<IntroThree> createState() => _IntroThreeState();
}

class _IntroThreeState extends State<IntroThree> {
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
                "Watch Any Movie or Series you Want",
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
                    "https://lottie.host/04445aff-c5f7-44f2-b709-d7cd149de410/LR3Azin4CN.json")),
          ],
        ),
      ),
    );
  }
}
