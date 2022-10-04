import 'package:flutter/material.dart';

class LactucaSativa extends StatelessWidget {
  final bool _isExpand;
  LactucaSativa(this._isExpand);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 6,
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
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
          child: const Text("Lactuca sativa"),
        ),
      ],
    );
  }
}
