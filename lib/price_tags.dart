import 'package:flutter/material.dart';
import 'package:price_tags/widgets/camera.dart';
import 'package:price_tags/widgets/prices.dart';

class PriceTagsApp extends StatefulWidget {
  const PriceTagsApp({super.key});

  @override
  State<PriceTagsApp> createState() => _PriceTagsAppState();
}

class _PriceTagsAppState extends State<PriceTagsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Price Tags",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
        backgroundColor: Colors.black
        ),
      ),
      routes: {
        '/camera':(context) => CameraWidget(),
        '/prices':(context) => PricesWidget()
      },
      initialRoute: '/camera',
      
    );
  }
}