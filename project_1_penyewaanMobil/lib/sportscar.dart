import 'package:flutter/material.dart';

class Sportscar extends StatefulWidget {
  const Sportscar({Key? key}) : super(key: key);

  @override
  State<Sportscar> createState() => _SportscarState();
}

class _SportscarState extends State<Sportscar> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> fotoMobil = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFyIKqDR1DoD9v01-JfUoSPXgUFrfNx2BAz9AStuOMyA&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO6DXqFs8MiX0msQODCFYkLqRqXU5zMrw7BEsnwQkU_g&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm18Lqeovv55QIAOkOO2q2i5MH5c2hm3OIUXSGKycmrA&s=10',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color merah = Color(0xFFE32636);
    const Color gelap = Color(0xFF080C15);
    const Color navy = Color(0xFF142743);

    return Scaffold(
      backgroundColor: gelap,
      appBar: AppBar(
        backgroundColor: gelap,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Detail Sports Car',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF080C15),
              Color(0xFF10284A),
              Color(0xFF164579),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 240,
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
                        width: double.infinity,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: navy,
                            child: const Center(
                              child: Icon(
                                Icons.directions_car,
                                color: Colors.white70,
                                size: 70,
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
                      color: _currentPage == index ? merah : Colors.white38,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  '${_currentPage + 1} / ${fotoMobil.length} foto',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Sports Car',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Modern Performance',
                style: TextStyle(
                  color: Color(0xFF73B7FF),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'Deskripsi Mobil',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'McLaren 720S merupakan mobil yang dirancang untuk '
                'memberikan pengalaman berkendara yang sporty. '
                'Mobil ini memiliki desain menarik, performa mesin '
                'yang bertenaga, serta pengendalian yang responsif. '
                'Cocok bagi kamu yang menyukai kecepatan dan gaya '
                'berkendara yang elegan.',
                style: TextStyle(
                  color: Color(0xFFCAD5E8),
                  fontSize: 14,
                  height: 1.7,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: navy,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: const Color(0xFF355A87),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Harga Sewa',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Rp8.000.000 / hari',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Divider(color: Colors.white24),
                    const SizedBox(height: 10),
                    keunggulan(
                      Icons.speed,
                      'British Supercar',
                    ),
                    keunggulan(
                      Icons.directions_car,
                      'Desain modern',
                    ),
                    keunggulan(
                      Icons.airline_seat_recline_extra,
                      'Kabin nyaman',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: merah,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Fitur sewa belum diaktifkan.',
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'Sewa Mobil',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget keunggulan(IconData icon, String teks) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFF73B7FF),
            size: 22,
          ),
          const SizedBox(width: 12),
          Text(
            teks,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
