import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/car_model.dart';
import 'car_detail_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Box<String> box = Hive.box<String>('favoriteCars');
    final favoriteNames = box.values.toList();
    final favoriteCars = allCars.where((car) => favoriteNames.contains(car.name)).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Cars')),
      body: favoriteCars.isEmpty
          ? const Center(child: Text('You have no favorite cars yet.'))
          : ListView.builder(
              itemCount: favoriteCars.length,
              itemBuilder: (context, index) {
                final car = favoriteCars[index];
                return ListTile(
                  leading: Image.network(car.imageUrl, width: 80, fit: BoxFit.cover),
                  title: Text(car.name),
                  subtitle: Text(car.description),
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
    );
  }
}
