import 'package:flutter/material.dart';

class Chevrolet extends StatefulWidget {
  const Chevrolet({Key? key}) : super(key: key);

  @override
  State<Chevrolet> createState() => _ChevroletState();
}

class _ChevroletState extends State<Chevrolet> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> fotoMobil = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4VgAOXHNhJaKjh-_g7Rt7E-5e8jRQNkkqhEbCSvnqEg&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdYaTF-QdC8RgYY52PS2ymjtUwYXUbN8Euj-nrwEMl-g&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDH2XC-gBc-o9Rvbm7aknD1Tp76NjVOAmoWLhWIU1P8g&s=10',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080D1C),
      appBar: AppBar(
        title: const Text(
          'Chevrolet Camaro SS',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF101A35),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF080D1C),
              Color(0xFF102B55),
              Color(0xFF080D1C),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: SizedBox(
                    height: 230,
                    width: double.infinity,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: fotoMobil.length,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Image.network(
                          fotoMobil[index],
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: const Color(0xFF17243D),
                              child: const Center(
                                child: Text(
                                  'Foto tidak dapat dimuat',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    fotoMobil.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: _currentPage == index ? 22 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? Colors.blueAccent
                            : Colors.white38,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                const Text(
                  'Chevrolet Camaro SS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Chevrolet Camaro SS merupakan mobil sport bergaya muscle car asal Amerika. Mobil ini memiliki desain agresif, bodi yang berotot, serta performa mesin yang bertenaga.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 22),
                const Text(
                  'Spesifikasi Mobil',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                _spesifikasi('Tipe Mobil', 'Muscle Car'),
                _spesifikasi('Mesin', 'V8 6.2 Liter'),
                _spesifikasi('Tenaga', '455 HP'),
                _spesifikasi('Transmisi', 'Manual / Otomatis'),
                _spesifikasi('Penggerak', 'Rear Wheel Drive'),
                const SizedBox(height: 22),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color(0xFF172B4D),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Harga Sewa',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Rp8.500.000 / Hari',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 22),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Fitur penyewaan akan segera tersedia',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'Sewa Mobil',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _spesifikasi(String judul, String nilai) {
    return Container(
      margin: const EdgeInsets.only(bottom: 9),
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 13,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF17243D),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            judul,
            style: const TextStyle(color: Colors.white70),
          ),
          Text(
            nilai,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
