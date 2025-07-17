// ignore_for_file: prefer_const_constructors

import 'package:dream_car/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'models/car_model.dart';
import 'widgets/car_card.dart';
import 'screens/car_detail_screen.dart';
import 'screens/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  // Register the adapter for CarModel
  await Hive.openBox<String>('favoriteCars');


  runApp(DreamCarsApp());
}
class DreamCarsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dream Cars',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}