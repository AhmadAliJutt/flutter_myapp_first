import 'package:flutter/material.dart';
import 'package:flutter_myapp_first/constant/itemcontainer.dart';
import 'package:flutter_myapp_first/widget/drawer.dart';

class HomePage extends StatelessWidget {
  List<Map<String, String>> SplashData = [
    {'img': 'asset/images.login_page5.png', 'text': 'Photo Compressor'},
    {'img': 'asset/images.login_page5.png', 'text': 'Video Compressor'},
    {'img': 'asset/images.login_page5.png', 'text': 'File  are here'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
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
              img: SplashData[index]['image'].toString(),
              text: SplashData[index]['text'].toString(),
            );
          },
        )),
      ),
    );
  }
}
