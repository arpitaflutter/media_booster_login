import 'package:flutter/material.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 50,
              right: -110,
              child: Container(
                height: 330,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.blue.shade800, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 20,
              left: 45,
              child: Container(
                height: 330,
                width: 330,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: -90,
              right: -45,
              child: Container(
                height: 330,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.blue.shade300, shape: BoxShape.circle),
              ),
            ),
            Positioned(
                top: 400,
                left: 45,
                child: Text(
                  "Welcome,",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.blue.shade800),
                )),
            Positioned(
                top: 460,
                left: 45,
                child: Text(
                  "Arpita Mangukiya",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue.shade700),
                )),
            Positioned(
                top: 600,
                left: 45,
                child: Text(
                  "Successfully Log In!!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue.shade700),
                )),
          ],
        ),
      ),
    );
  }
}
