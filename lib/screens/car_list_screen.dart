import 'package:flutter/material.dart';
import '../models/car.dart';
import '../widgets/car_card.dart';
import 'car_detail_screen.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(
      id: '1',
      name: 'Toyota Avanza',
      description: 'Mobil keluarga yang nyaman.',
      pricePerDay: 40.0,
      imageUrl: 'https://link-to-image.com/avanza.jpg',
    ),
    Car(
      id: '2',
      name: 'Honda Civic',
      description: 'Mobil sedan dengan performa tinggi.',
      pricePerDay: 60.0,
      imageUrl: 'https://link-to-image.com/civic.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mobil'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(
            car: cars[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailScreen(car: cars[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
