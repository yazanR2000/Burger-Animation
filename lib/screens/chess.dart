import 'package:flutter/material.dart';

class Chess extends StatelessWidget {
  const Chess({super.key});

  Color _boxColor(int column, int row) {
    if (column % 2 == 0) {
      if (row % 2 == 0) {
        return Colors.black;
      }
      return Colors.white;
    } else {
      if (row % 2 == 0) {
        return Colors.white;
      }
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double top = MediaQuery.of(context).padding.top;
    //final double bottomHeight = MediaQuery.of(context).padding.bottom;
    return LayoutBuilder(
      builder: (_, constraints) {
        double height = constraints.maxHeight - top - 50;
        double width = constraints.maxWidth;
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: AppBar(
              title: const Text("Chess"),
            ),
          ),
          body: Stack(
            children: List.generate(
              64,
              (index) => Positioned(
                top: (index / 8).floor() * ((height / 8)),
                left: (index % 8) * (width / 8),
                child: Container(
                  width: width / 8,
                  height: height / 8,
                  color: _boxColor((index / 8).floor(), index % 8),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
