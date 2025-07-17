import 'package:flutter/material.dart';
import '../models/car_model.dart';
import '../widgets/car_card.dart';
import 'car_detail_screen.dart';

class CarListScreen extends StatelessWidget {
  final String brand;

  const CarListScreen({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    final cars = allCars.where((car) => car.brand == brand).toList();

    return Scaffold(
      appBar: AppBar(title: Text(brand)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: cars.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 sütunlu grid
            childAspectRatio: 0.75, // yüksekliği ayarla
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final car = cars[index];
            return CarCard(
              car: car,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CarDetailScreen(car: car),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
