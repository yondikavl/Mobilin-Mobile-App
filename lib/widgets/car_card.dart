import 'package:flutter/material.dart';
import '../models/car.dart';

class CarCard extends StatelessWidget {
  final Car car;
  final VoidCallback onTap;

  const CarCard({
    Key? key,
    required this.car,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        // elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Image.asset(
                  'images/${car.imagePath}',
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  car.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Harga: Rp ${car.pricePerDay.toStringAsFixed(0)} / Jam',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.people),
                            SizedBox(width: 8),
                          ],
                        ),
                        Text(
                          '${car.seats}',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.speed),
                            SizedBox(width: 8),
                          ],
                        ),
                        Text(
                          '${car.speed}',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
