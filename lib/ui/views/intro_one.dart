import 'package:cumax/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroOne extends StatefulWidget {
  const IntroOne({super.key});

  @override
  State<IntroOne> createState() => _IntroOneState();
}

class _IntroOneState extends State<IntroOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //info text
            Text(
              "Welcome to Cumax",
              style: TextStyle(
                  color: colorTextWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 36,
            ),
            Container(
                width: double.infinity,
                height: 400,
                child: Lottie.network(
                    "https://lottie.host/9db70a87-85f0-4258-adb1-e0a8517eb453/KGVHxT3kEw.json")),
          ],
        ),
      ),
    );
  }
}
