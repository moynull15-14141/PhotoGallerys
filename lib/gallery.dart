import 'package:flutter/material.dart';
import 'package:photo_gallery/photo.dart';

class gallery extends StatelessWidget {
  const gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Screen());
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 184, 255, 143),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => photo()));
            },
            child: Text(
              'Welcome To Gallery',
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 7, 68, 32)),
            )),
      ),
    ));
  }
}
