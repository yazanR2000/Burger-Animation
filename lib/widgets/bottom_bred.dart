import 'package:flutter/material.dart';

class BottomBred extends StatelessWidget {
  
  final bool _isExpand;
  BottomBred(this._isExpand);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 25,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.brown.shade400,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.linear,
          margin: _isExpand ? const EdgeInsets.all(10) : EdgeInsets.zero,
          height: _isExpand ? 20 : 0,
          width: _isExpand ? 100 : 0,
          alignment: Alignment.center,
          child: const Text("Bottom Bred"),
        ),
      ],
    );
  }
}
