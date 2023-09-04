// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  final String text;
  final String img;
  ItemContainer({
    super.key,
    required this.text,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    print("assets path $img");
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
      child: Container(
        height: MediaQuery.of(context).size.height * .10,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 145, 114, 232),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 45,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(image: AssetImage(img)),
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
