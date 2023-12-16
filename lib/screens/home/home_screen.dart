import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Courses",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              height: 280,
              width: 260,
              decoration: const BoxDecoration(
                color: Color(0xFF7553F6),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Animations in SwiftUI",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 8),
                        child: Text(
                          "Build and animate an iOS app from scratch",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      const Text(
                        "61 SECTIONS -11 HOURS",
                        style: TextStyle(color: Colors.white54),
                      ),
                      const Spacer(),
                      Row(
                        children: List.generate(
                            3,
                            (index) => Transform.translate(
                                  offset: Offset((-10 * index).toDouble(), 0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                        "assets/avatars/Avatar ${index + 1}.jpg"),
                                  ),
                                )),
                      )
                    ],
                  )),
                  SvgPicture.asset("assets/icons/ios.svg")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Course {
  final String title, description, iconScr;
  final Color bgColor;

  Course({
    required this.title,
    this.description = "Build and animate an iOS app from scratch",
    this.iconScr = "assets/icons/ios.svg",
    this.bgColor = const Color(0xFF7553F6),
  });
}
