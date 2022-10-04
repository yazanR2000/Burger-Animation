
import 'package:flutter/material.dart';
import '../widgets/top_bred.dart';
import '../widgets/lactuca_sativa.dart';
import '../widgets/beef.dart';
import '../widgets/cheese.dart';
import '../widgets/double_beef.dart';
import '../widgets/bottom_bred.dart';
class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  bool _isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burger"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isExpand = !_isExpand;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TopBred(_isExpand),
              LactucaSativa(_isExpand),
              Beef(_isExpand),
              Cheese(_isExpand),
              DoubleBeef(_isExpand),
              BottomBred(_isExpand),
              
            ],
          ),
        ),
      ),
    );
  }
}
