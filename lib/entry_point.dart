import 'package:animated_app/constants.dart';
import 'package:animated_app/utils/rive_utils.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({Key? key}) : super(key: key);

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  late SMIBool searchTigger;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: backgroundColor2.withOpacity(0.8),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            children: [
              SizedBox(
                height: 36,
                width: 36,
                child: RiveAnimation.asset(
                  "assets/RiveAssets/icons.riv",
                  artboard: "SEARCH",
                  onInit: (artboard) {
                    StateMachineController controller =
                        RiveUtils.getRiveController(artboard,
                            stateMachineName: "SEARCH_Interactivity");
                    searchTigger = controller.findInput("SEARCH") as SMIBool;
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
