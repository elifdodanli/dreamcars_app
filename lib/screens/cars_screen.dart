import 'package:flutter/material.dart';
import 'car_list_screen.dart';

class CarsScreen extends StatelessWidget {
  const CarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final brands = ['Porsche', 'BMW', 'Ferrari'];

    return Scaffold(
      appBar: AppBar(title: const Text('Select a Brand')),
      body: ListView.builder(
        itemCount: brands.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(brands[index]),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CarListScreen(brand: brands[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
