import 'package:cumax/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroTwo extends StatefulWidget {
  const IntroTwo({super.key});

  @override
  State<IntroTwo> createState() => _IntroTwoState();
}

class _IntroTwoState extends State<IntroTwo> {
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
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                "Create your Own Profile as you Wish ",
                style: TextStyle(
                    color: colorTextWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),

            Container(
                width: double.infinity,
                height: 400,
                child: Lottie.network(
                    "https://lottie.host/250445a0-659d-43a9-8d65-e10070b76af4/2wEgzKRag1.json")),
          ],
        ),
      ),
    );
  }
}
