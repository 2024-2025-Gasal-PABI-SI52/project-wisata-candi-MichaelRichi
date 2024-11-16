import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //TODO: 1. Deklarasikan Variabel Yang dibutuhkan
  bool isSignedIn = true; // Agar Kelihatan
  String fullName = "";
  String userName = "";
  int favoriteCandiCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Stack antara container dan column
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            //Agar Ada jarak untuk Column supaya tidak tabrak ke dinding
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                //TODO: 2. Buat Bagian Profile Header (Isinya Gambar Profil)
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepPurple,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('images/placeholder_image.png'),
                      ),
                    ),
                    if (isSignedIn)
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.deepPurple[50],
                        ),
                      ),
                  ],
                ),
                //TODO: 3. Buat Bagian Profile Info (Isinya Info Profil)
                //TODO: 4. Buat Bagian Profile Action (Isinya Tombol Sign In/ Sign Out)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
