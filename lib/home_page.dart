import 'package:flutter/material.dart';
import 'package:flutter_myapp_first/constant/itemcontainer.dart';
import 'package:flutter_myapp_first/widget/drawer.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
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
      backgroundColor: Color.fromARGB(255, 238, 237, 233),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 8, 222),
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Zip Compressor",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      drawer: const myDrawer(),
      body: Center(
        child: Container(
          child: ListView.builder(
            itemCount: SplashData.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemContainer(
                img: SplashData[index]['img'].toString(),
                text: SplashData[index]['text'].toString(),
              );
            },
          ),
        ),
      ),
    );
  }
}
