import 'package:flutter/material.dart';
import '../models/car.dart';
import 'booking_form_screen.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  const CarDetailScreen({
    Key? key,
    required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(car.imageUrl, height: 250, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              car.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              car.description,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '\$${car.pricePerDay} per day',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingFormScreen(car: car),
                  ),
                );
              },
              child: Text('Sewa Sekarang'),
            ),
          ),
        ],
      ),
    );
  }
}
