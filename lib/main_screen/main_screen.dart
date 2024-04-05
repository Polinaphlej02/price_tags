import 'package:flutter/material.dart';
import 'package:price_tags/consts.dart';
import 'package:price_tags/widgets/camera.dart';
import 'package:price_tags/widgets/prices.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;

  void onTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  List<Widget> widgetsOpt = <Widget>[
  CameraWidget(),
  PricesWidget(),
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Price Helper", style: TextStyle(color: Colors.black, fontSize: 30),),
        backgroundColor: Colors.white,
        centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
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
            onTap: onTab,
        ),
        body: Center(
          child: widgetsOpt[_selectedTab],
          ),
    );
  }
}