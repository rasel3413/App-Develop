import 'package:currency_converter/currencey_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(Object context) {
    // TODO: implement build
    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}
