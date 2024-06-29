import 'package:flutter/material.dart';
import 'package:Mobilin/models/car.dart';
import '../widgets/car_card.dart';
import 'car_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(
      id: '1',
      name: 'Toyota Avanza',
      description:
          'Toyota Avanza adalah mobil keluarga yang nyaman dengan desain yang ergonomis. Dilengkapi dengan fitur-fitur canggih seperti sistem audio premium, koneksi Bluetooth, dan AC terpusat. Cocok untuk perjalanan jauh bersama keluarga Anda.',
      pricePerDay: 1200000.0,
      imagePath: 'avanza.png',
      seats: 7,
      speed: '140 km/h',
    ),
    Car(
      id: '2',
      name: 'Honda Civic',
      description:
          'Honda Civic merupakan mobil sedan dengan performa tinggi yang menawarkan pengalaman berkendara yang dinamis. Didesain dengan teknologi terkini, dilengkapi dengan mesin yang bertenaga, interior mewah, dan sistem keamanan tingkat tinggi.',
      pricePerDay: 1300000.0,
      imagePath: 'civic.png',
      seats: 5,
      speed: '200 km/h',
    ),
    Car(
      id: '3',
      name: 'Suzuki Ertiga',
      description:
          'Suzuki Ertiga adalah MPV dengan desain modern yang menawarkan ruang kabin yang luas dan nyaman. Dilengkapi dengan kursi fleksibel, teknologi mutakhir, dan sistem keamanan terbaik untuk kenyamanan dan keselamatan Anda selama perjalanan.',
      pricePerDay: 1100000.0,
      imagePath: 'ertiga.png',
      seats: 7,
      speed: '160 km/h',
    ),
    Car(
      id: '4',
      name: 'Mitsubishi Pajero',
      description:
          'Mitsubishi Pajero adalah SUV dengan performa tangguh yang siap menghadapi berbagai medan. Didesain untuk petualangan, dilengkapi dengan mesin bertenaga, sistem penggerak empat roda, dan kenyamanan interior premium untuk perjalanan yang tak terlupakan.',
      pricePerDay: 1500000.0,
      imagePath: 'pajero.png',
      seats: 7,
      speed: '180 km/h',
    ),
    Car(
      id: '5',
      name: 'Toyota Alphard',
      description:
          'Toyota Alphard adalah MPV mewah dengan kenyamanan terbaik dan desain elegan. Dilengkapi dengan kursi berlapis kulit, sistem hiburan terintegrasi, dan fitur keamanan canggih. Cocok untuk perjalanan bisnis atau liburan bersama keluarga dalam gaya yang mewah.',
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
