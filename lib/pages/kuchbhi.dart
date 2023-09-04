// ignore: unused_import
import 'dart:html';

import 'package:flutter/material.dart';

import '../widget/drawer.dart';
// import 'package:flutter/rendering.dart';

// ignore: must_be_immutable
class Try extends StatelessWidget {
  //const Try({super.key});
  List<Map<String, String>> SplashData = [
    {'img': 'asset/images/image.png', 'text': 'Photo '},
    {'img': 'asset/images/video.png', 'text': 'Video '},
    {'img': 'asset/images/audio.png', 'text': 'audio '},
    {'img': 'asset/images/file.png', 'text': 'File  '},
    {'img': 'asset/images/11.jpeg', 'text': 'compressed '},
    {'img': 'asset/images/11.jpeg', 'text': 'internal storage '},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Zip Compressor",
          style: TextStyle(color: Color.fromARGB(255, 249, 247, 247)),
        ),
      ),
      drawer: const myDrawer(),
      body: Container(
        child: Row(
          children: [
            SizedBox(
              width: 41,
              height: 30,
            ),
            Column(
              children: [
                SizedBox(
                  height: 75,
                ),
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 151, 226, 226),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage("asset/images/image.png")),
                      Text(
                        "image ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 4, 4, 4), fontSize: 25),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 151, 226, 226),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage("asset/images/audio.png")),
                      Text(
                        "audio ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 4, 4, 4), fontSize: 25),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                Container(
                  padding: EdgeInsets.only(left: 3, top: 90),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 235, 172, 54),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "compressed",
                    style: TextStyle(
                        color: Color.fromARGB(255, 240, 236, 236),
                        fontSize: 25),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 57,
            ),
            Column(
              children: [
                SizedBox(
                  height: 75,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 90),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 235, 172, 54),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text("video",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
                SizedBox(
                  height: 37,
                ),
                Container(
                  padding: EdgeInsets.only(left: 50, top: 90),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 200, 27, 27),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "file",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 90),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 235, 172, 54),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "internal storage",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
