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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
                Text(
                  "In the gentle embrace of nature's bosom, moods sway like leaves in the wind, a delicate dance orchestrated by the rhythms of the earth. ",
                  style: TextStyle(fontSize: 18),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'See More',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 12),
                  ),
                ),
                Text(
                  'Suggestions',
                  style: TextStyle(color: Colors.green, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 200,
                        width: 170,
                        child: Stack(
                          children: [
                            Image.asset('image/city.jpg'),
                            Positioned(
                              top: 80,
                              bottom: 20,
                              right: 10,
                              left: 130,
                              child: Text(
                                "City",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        )),
                    Container(
                        height: 200,
                        width: 195,
                        child: Stack(
                          children: [
                            Image.asset('image/road.jpg'),
                            Positioned(
                              top: 80,
                              bottom: 20,
                              right: 10,
                              left: 130,
                              child: Text(
                                "Road",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
