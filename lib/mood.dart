import 'package:flutter/material.dart';

class mood extends StatelessWidget {
  const mood({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text(
            'Mood',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: SizedBox(child: Image.asset('image/mood.jpg')),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Mood With Nature',
                style: TextStyle(fontSize: 28),
              )
            ],
          ),
        ),
      ),
    );
  }
}
