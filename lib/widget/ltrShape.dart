import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  final double widths;
  const LeftShape({required this.widths, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: widths,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
      ],
    );
  }
}
