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
      imageUrl:
          'https://www.toyota.astra.co.id//sites/default/files/2023-09/2-avanza-gray-metallic.png',
    ),
    Car(
      id: '2',
      name: 'Honda Civic',
      description: 'Mobil sedan dengan performa tinggi.',
      pricePerDay: 60.0,
      imageUrl:
          'https://imgcdn.oto.com/large/gallery/color/14/524/honda-civic-type-r-color-978755.jpg',
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
