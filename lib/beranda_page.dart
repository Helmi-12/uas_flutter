import 'package:flutter/material.dart';
import 'detail_page.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const BerandaContent(),
    Center(child: Text('Pesanan')),
    Center(child: Text('Profil akun')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEEEDC),
      appBar: AppBar(
        backgroundColor: const Color(0x00D2D0D0),
        elevation: 0,
        title: const Text(
          'PREMIUM QUALITY COFFEE',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF0FEEEDC),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        backgroundColor: const Color(0xFF5A3E36),
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Pesanan',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
    );
  }
}

class BerandaContent extends StatelessWidget {
  const BerandaContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 8), 
              child: Text(
                '"Pahit Kopi, manisnya ngobrol bareng kamu."', 
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black87,
              ),
            ),
          ),
        ),
         const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'MENU COFFE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                buildMenucard(
                  context, 
                  "assets/image/kopi_1.png",
                  "COFFE CUP"
                  ),
                buildMenucard(
                  context, 
                  "assets/image/kopi_2.png",
                  "WHITE COFFE TEA"
                  ),
                buildMenucard(
                  context, 
                  "assets/image/kopi_3.png",
                  "COFFE CARAMEL"
                  ),
                buildMenucard(
                  context, 
                  "assets/image/kopi_4.png",
                  "BLACK COFFE"
                  ),
                buildMenucard(
                  context, 
                  "assets/image/kopi_5.png",
                  "COFFE MILK"
                  ),
                buildMenucard(
                  context, 
                  "assets/image/kopi_6.png",
                  "COFFE LATTE"
                  ),
                buildMenucard(
                  context, 
                  "assets/image/kopi_7.png",
                  "COFFE ESPRESSO"
                  ),
                buildMenucard(
                  context, 
                  "assets/image/kopi_8.png",
                  "ICE COFFE MATCHA"
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenucard(BuildContext context, String imagePath, String title) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: 
              (context) => DetailPage(title: title, imagePath: imagePath),
            ),  
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF5A3E36),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF795548).withOpacity(0.3),
                blurRadius: 8,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, height: 80),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255 ,255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
    );
  }
}
