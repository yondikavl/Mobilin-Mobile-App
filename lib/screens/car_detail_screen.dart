import 'package:flutter/material.dart';
import '../models/car.dart';
import 'booking_form_screen.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  const CarDetailScreen({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('images/${car.imagePath}',
              height: 150, fit: BoxFit.contain),
          Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 12),
            child: Text(
              car.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Text(
              car.description,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Text(
              '\Rp.${car.pricePerDay} / Jam',
              style: TextStyle(fontSize: 20, color: Colors.teal.shade500),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(24),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingFormScreen(car: car),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Sewa Sekarang'),
            ),
          ),
        ],
      ),
    );
  }
}
