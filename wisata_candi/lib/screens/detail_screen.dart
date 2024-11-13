import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi; // Diambil dari models

  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Dilakukan wrap widget ganti Supaya Bisa Scroll
        child: SafeArea(
          // Agar Tidak Menabrak Notification di Atas
          child: Column(
            children: [
              // DETAIL HEADER
              // Image Utama
              Stack(
                // Agar bisa menumpuk dilakukan wrap menggunakan stack
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        candi.imageAsset, // Diambil dari data candi_data
                        width: double
                            .infinity, // Agar Gambar Full dari kiri ke kanan
                        height: 300,
                        fit: BoxFit.cover, // Agar porsinya proposional
                      ),
                    ),
                  ),
                  // Tombol Back Custom
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      // Untuk Dekorasi
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100]?.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ],
              ),
              // DETAIL INFO
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  // Pada Column Main Axix itu Vertical, crossAxis Horizontal
                  crossAxisAlignment: CrossAxisAlignment.start, // (Terhad)
                  children: [
                    //Info Atas (Nama Candi dan Tombol Favorit)
                    const SizedBox(
                      height: 16, // Kasih Jarak dengan Stack di atas
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // Supaya Posisi Teks dan Tombol Sama
                      children: [
                        Text(
                          candi.name,
                          style: const TextStyle(
                            // const agar tidak berubah"
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border)),
                      ],
                    ),
                    //Info Tengah (lokasi, dibangun, tipe)
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.place,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const SizedBox(
                            width: 70,
                            child: Text(
                              'Lokasi',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Text(
                          ': ${candi.location}',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const SizedBox(
                            width: 70,
                            child: Text(
                              'Dibangun',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Text(
                          ': ${candi.built}',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.house,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const SizedBox(
                            width: 70,
                            child: Text(
                              'Tipe',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Text(
                          ': ${candi.type}',
                        ),
                      ],
                    ),
                    //Pemisah
                    const SizedBox(
                      height: 16,
                    ),
                    Divider(color: Colors.deepPurple.shade100),
                    const SizedBox(
                      height: 16,
                    ),
                    //Info Bawah
                    const Text(
                      'Deskripsi',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      candi.description,
                    ),
                  ],
                ),
              ),
              // DETAIL GALLERY
            ],
          ),
        ),
      ),
    );
  }
} // Ambil dari main.dart
