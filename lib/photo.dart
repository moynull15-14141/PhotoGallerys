import 'package:flutter/material.dart';
import 'package:photo_gallery/Astetic.dart';
import 'package:photo_gallery/animals.dart';
import 'package:photo_gallery/city.dart';
import 'package:photo_gallery/cnt.dart';
import 'package:photo_gallery/mood.dart';

class photo extends StatefulWidget {
  const photo({super.key});

  @override
  State<photo> createState() => _photoState();
}

class _photoState extends State<photo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Photo Gallery",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            iconColor: Colors.white,
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Option 1'),
                  value: 'Option 1',
                ),
                PopupMenuItem(
                  child: Text('Option 2'),
                  value: 'Option 2',
                ),
                PopupMenuItem(
                  child: Text('Option 3'),
                  value: 'Option 3',
                ),
              ];
            },
            onSelected: (value) {
              print('Selected: $value');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mood()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 150,
                    width: 180,
                    child: Stack(
                      children: [
                        Image.asset(
                          'image/mood.jpg',
                        ),
                        Positioned(
                          top: 67,
                          bottom: 60,
                          right: 10,
                          child: Text(
                            'Mood',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Astetic()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        Image.asset(
                          'image/Astetic.jpg',
                        ),
                        Positioned(
                          top: 67,
                          bottom: 60,
                          right: 10,
                          child: Text(
                            'Astetic',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => animals()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 150,
                    width: 180,
                    child: Stack(
                      children: [
                        Image.asset(
                          'image/animals.jpg',
                        ),
                        Positioned(
                          top: 67,
                          bottom: 60,
                          right: 10,
                          child: Text(
                            'Animals',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => city()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        Image.asset(
                          'image/city.jpg',
                        ),
                        Positioned(
                          top: 63,
                          bottom: 60,
                          right: 10,
                          child: Text(
                            'City',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
