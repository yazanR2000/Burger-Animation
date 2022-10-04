import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed('/chess');
              },
              icon: const FaIcon(FontAwesomeIcons.chess),
              label: const Text("Chess"),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed('/burger');
              },
              icon: const FaIcon(FontAwesomeIcons.burger),
              label: const Text("Burger"),
            )
          ],
        ),
      ),
    );
  }
}
