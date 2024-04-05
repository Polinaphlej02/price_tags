import 'package:flutter/material.dart';

class CameraWidget extends StatefulWidget {
  const CameraWidget({super.key});

  @override
  State<CameraWidget> createState() => __CameraWidgetStateState();
}

class __CameraWidgetStateState extends State<CameraWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera", style: TextStyle(color: Colors.black, fontSize: 30),),
        backgroundColor: Colors.white,
        centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
             BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: "Camera",
              ),
             BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_outlined),
              label: "Prices",
              ),
            ],
        ),
    );
  }
}