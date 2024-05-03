import 'package:flutter/material.dart';

class cnt extends StatelessWidget {
  Image? image;
  Text? text;
  cnt({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 80,
        color: Colors.amber,
        child: Stack(
          children: [Image.asset('$image'), Text("$text")],
        ));
  }
}
