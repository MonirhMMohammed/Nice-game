// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 149, 140, 140),
      appBar: AppBar(
        centerTitle: true,
        title: Text(' Matct The pictures'),
        backgroundColor: Color.fromARGB(255, 149, 140, 140),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            size: 35,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
          onPressed: () {
          },
          icon: Icon(
            Icons.add,
            size: 35,
            color: Colors.white,
          ),
        ),
        ],
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumberb = 2;

  void changeImage() {
    rightImageNumberb = Random().nextInt(8) + 1;
    leftImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumberb ? 'Nice' : 'play now!',
          style: TextStyle(
            fontSize: 66,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset('images/image-$leftImageNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset('images/image-$rightImageNumberb.png'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
