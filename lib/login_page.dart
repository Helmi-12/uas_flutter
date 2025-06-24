import 'package:flutter/material.dart';
import 'beranda_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/beranda': (context) => BerandaPage(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _phoneControleer = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF432B14),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),

            Center(child: Image.asset('assets/image/coffe.png', height: 200)),

            const SizedBox(height: 30),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Silahkan Login Menggunakan Email Kamu',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                controller: _phoneControleer,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Cth. uas@gmail.com',
                  hintStyle: const TextStyle(color: Color(0xFF9F824D)),
                  filled: true,
                  fillColor: const Color(0xFFFBE2C2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (val) {
                      setState(() {
                        _isChecked = val ?? false;
                      });
                    },
                    activeColor: const Color(0xFFF44336),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(fontSize: 14),
                          children: [
                            TextSpan(
                              text: 'Saya menyetujui',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: 'Syarat, ketentuan',
                              style: TextStyle(color: Color(0xFFF44336)),
                            ),
                            TextSpan(
                              text: ', dan',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: 'privasi',
                              style: TextStyle(color: Colors.red),
                            ),
                            TextSpan(
                              text: 'Cookie',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    if (_isChecked) {
                      print('Navigasi ke Beranda');
                      Navigator.pushReplacementNamed(context, '/beranda');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Silahkan isi Email dan setujui syarat dan ketentuan.',
                          ),
                        ),
                      );
                    }
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFBE2C2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'MASUK',
                    style: TextStyle(
                      color: Color(0xFF5D3A1A),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Atau masuk menggunakan',
              style: TextStyle(color: Color(0XFF706F6F), fontSize: 14),
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Login dengan Google belom tersedia.'),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/image/google.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Login Facebook belum tersedia.'),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/image/facebook.png',
                    width: 35,
                    height: 35,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
