import 'package:flutter/material.dart';

class RegestrationScreen extends StatefulWidget {
  const RegestrationScreen({ Key? key }) : super(key: key);

  @override
  _RegestrationScreenState createState() => _RegestrationScreenState();
}

class _RegestrationScreenState extends State<RegestrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellowAccent, Colors.greenAccent])),
      child: Scaffold(
          // By defaut, Scaffold background is white
          // Set its value to transparent
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_img.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}