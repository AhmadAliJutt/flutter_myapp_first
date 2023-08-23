import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  final String text;
  final String img;
  ItemContainer({super.key, required this.text, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25),
      child: Container(
          height: MediaQuery.of(context).size.height * .20,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 49, 141, 154),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 45,
                  backgroundImage: AssetImage(
                    img,
                  ),
                ),
              ),
              Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ],
          )),
    );
  }
}
