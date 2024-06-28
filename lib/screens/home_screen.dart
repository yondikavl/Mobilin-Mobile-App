import 'package:flutter/material.dart';
import 'car_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rental Mobil'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CarListScreen()),
            );
          },
          child: Text('Lihat Daftar Mobil'),
        ),
      ),
    );
  }
}
