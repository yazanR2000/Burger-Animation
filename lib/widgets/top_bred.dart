import 'package:flutter/material.dart';

class TopBred extends StatelessWidget {
  
  final bool _isExpand;
  TopBred(this._isExpand);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.brown.shade400,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          margin: _isExpand ? const EdgeInsets.all(10) : EdgeInsets.zero,
          curve: Curves.linear,
          height: _isExpand ? 20 : 0,
          width: _isExpand ? 100 : 0,
          alignment: Alignment.center,
          child: const Text("Top Bred"),
        ),
      ],
    );
  }
}
