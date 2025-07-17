import 'package:flutter/material.dart';
import '../models/car_model.dart';

class CarDetailScreen extends StatelessWidget {
  final CarModel car;

  const CarDetailScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(car.imageUrl, height: 200),
            const SizedBox(height: 16),
            Text(car.description, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [
                  const Text('Horsepower'),
                  Text('${car.horsepower} HP'),
                ]),
                Column(children: [
                  const Text('Top Speed'),
                  Text('${car.topSpeed} km/h'),
                ]),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [
                  const Text('Engine'),
                  Text(car.engine),
                ]),
                Column(children: [
                  const Text('0-100 km/h'),
                  Text('${car.acceleration} s'),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
