import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi; // Diambil dari models

  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                candi.imageAsset, // Diambil dari data candi_data
                width: double.infinity, // Agar Gambar Full dari kiri ke kanan
                height: 300,
                fit: BoxFit.cover, // Agar porsinya proposional
              ),
            ),
          ),
        ],
      ),
    );
  }
} // Ambil dari main.dart
