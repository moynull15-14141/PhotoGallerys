import 'package:flutter/material.dart';

class cnt extends StatelessWidget {
  double? height;
  double? width;
  cnt({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.amber,
    );
  }
}
