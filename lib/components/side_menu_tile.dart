import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Divider(
            color: Colors.white,
            height: 1,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SizedBox(
            height: 34,
            width: 34,
            child: RiveAnimation.asset(
              "assets/RiveAssets/icons.riv",
              artboard: "HOME",
              onInit: (artboard) {},
            ),
          ),
          title: const Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
