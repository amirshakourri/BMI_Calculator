import 'package:flutter/material.dart';
import 'package:learning/constans.dart';

class RightShape extends StatelessWidget {
  final double widths;
  const RightShape({required this.widths, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: widths,
          height: 40,
          decoration: BoxDecoration(
            color: greenBackground,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
        ),
      ],
    );
  }
}
