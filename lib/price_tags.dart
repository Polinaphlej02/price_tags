import 'package:flutter/material.dart';
import 'package:price_tags/main_screen/main_screen.dart';
import 'package:price_tags/widgets/camera.dart';
import 'package:price_tags/widgets/prices.dart';

class PriceTagsApp extends StatefulWidget {
  const PriceTagsApp({super.key});

  @override
  State<PriceTagsApp> createState() => _PriceTagsApp();
}

class _PriceTagsApp extends State<PriceTagsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Price Tags",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
        backgroundColor: Colors.white
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        )
      ),
      routes: {
        '/main':(context) => MainScreen(),
        '/camera':(context) => CameraWidget(),
        '/prices':(context) => PricesWidget()
      },
      initialRoute: '/main',
      
    );
  }
}