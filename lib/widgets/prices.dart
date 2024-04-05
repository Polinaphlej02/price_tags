import 'package:flutter/material.dart';

class PricesWidget extends StatefulWidget {
  const PricesWidget({super.key});

  @override
  State<PricesWidget> createState() => _PricesWidgetState();
}

class _PricesWidgetState extends State<PricesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text("Prices"),
    );
  }
}