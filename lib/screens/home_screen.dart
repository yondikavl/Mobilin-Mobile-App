import 'package:flutter/material.dart';
import 'package:flutter_pemula/models/car.dart';
import '../widgets/car_card.dart';
import 'car_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(
      id: '1',
      name: 'Toyota Avanza',
      description: 'Mobil keluarga yang nyaman.',
      pricePerDay: 1200000.0,
      imagePath: 'avanza.png',
      seats: 7,
      speed: '140 km/h',
    ),
    Car(
      id: '2',
      name: 'Honda Civic',
      description: 'Mobil sedan dengan performa tinggi.',
      pricePerDay: 1300000.0,
      imagePath: 'civic.png',
      seats: 5,
      speed: '200 km/h',
    ),
    Car(
      id: '3',
      name: 'Suzuki Ertiga',
      description: 'MPV dengan ruang kabin yang luas.',
      pricePerDay: 1100000.0,
      imagePath: 'ertiga.png',
      seats: 7,
      speed: '160 km/h',
    ),
    Car(
      id: '4',
      name: 'Mitsubishi Pajero',
      description: 'SUV dengan performa yang tangguh.',
      pricePerDay: 1500000.0,
      imagePath: 'pajero.png',
      seats: 7,
      speed: '180 km/h',
    ),
    Car(
      id: '5',
      name: 'Toyota Alphard',
      description: 'MPV mewah dengan kenyamanan terbaik.',
      pricePerDay: 1800000.0,
      imagePath: 'alphard.png',
      seats: 7,
      speed: '180 km/h',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 120.0,
            pinned: true,
            flexibleSpace: Container(
              color: Colors.teal, // Warna latar belakang polos
              child: const Center(
                child: Text(
                  'Selamat Datang di Mobilin',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // SliverList untuk konten utama yang dapat di-scroll
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
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
              childCount: cars.length,
            ),
          ),
        ],
      ),
    );
  }
}
