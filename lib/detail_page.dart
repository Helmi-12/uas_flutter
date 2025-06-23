import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String imagePath;

  const DetailPage({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFF795548),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(imagePath, height: 200),
                    const SizedBox(height: 30),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Lorem ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              )
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Order berhasil dikirim!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                   backgroundColor: const Color(0xFF5A3E36),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Order Now',
                  style: TextStyle(fontSize: 18),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}