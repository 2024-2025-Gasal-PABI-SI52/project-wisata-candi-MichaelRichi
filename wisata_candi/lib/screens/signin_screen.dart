import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SigninScreen extends StatefulWidget {
  // Stateless Widget Untuk mempermudah perubahan widget
  SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  //TODO: 1. Deklarasikan Variabel Yang Dibutuhkan
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  bool _isSignIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 2. Pasang AppBar
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      //TODO: 3. Pasang Body
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            // Diwrap pakai padding agar tidak terlalu rapat ke kiri dan kanan
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                //TODO: 4. Atur MainAxisAlignment dan CrossAxisAlignment
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //TODO: 5. Buat TextFormField Untuk Nama Pengguna
                  TextFormField(
                    // Controller = Varibel Apa yang mewakili TextFormField
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Nama Pengguna',
                      hintText: 'Masukkan Nama Pengguna',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  //TODO: 6. Buat TextFormField Untuk Kata Sandi
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Kata Sandi',
                      hintText: 'Masukkan kata sandi',
                      border: const OutlineInputBorder(),
                      errorText: _errorText.isNotEmpty ? _errorText : null,
                      suffixIcon: IconButton(
                        onPressed: () {
                          // Agar Kata Sandi Bisa Ditampilkan/Disembunyikan
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    obscureText: _obscurePassword,
                  ),
                  //TODO: 7. Buat ElevatedButton Untuk SignIn
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Sign In'),
                  ),
                  //TODO: 8. Buat TextButton Untuk Sign Up
                  const SizedBox(height: 10),
                  // TextButton(
                  //   onPressed: () {},
                  //   child: Text('Belum punya akun? Daftar disini.'),
                  //),
                  RichText(
                    text: TextSpan(
                      text: 'Belum punya akun? ',
                      style: const TextStyle(
                          fontSize: 16, color: Colors.deepPurple),
                      children: [
                        TextSpan(
                          text: 'Daftar disini',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                          //Agar Bisa Diklik
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
