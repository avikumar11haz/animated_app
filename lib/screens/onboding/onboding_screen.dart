import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      "active",
      autoplay: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.7,
            bottom: 200,
            left: 100,
            child: Image.asset("assets/Backgrounds/Spline.png"),
          ),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
          )),
          const RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
            child: SizedBox(),
          )),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                SizedBox(
                  width: 260,
                  child: Column(
                    children: [
                      Text(
                        "Learn design & code",
                        style: TextStyle(
                          fontSize: 60,
                          fontFamily: "Poppins",
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                          "Don't skip design. Learn design and code, by building real apps with Flutter and Swift. Complete courses about the best tools."),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
