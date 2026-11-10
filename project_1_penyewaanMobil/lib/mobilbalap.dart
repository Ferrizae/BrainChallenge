import 'package:flutter/material.dart';

class Mobilbalap extends StatefulWidget {
  const Mobilbalap({Key? key}) : super(key: key);

  @override
  State<Mobilbalap> createState() => _MobilbalapState();
}

class _MobilbalapState extends State<Mobilbalap> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> fotoMobil = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR3d7tkGoEhY2jAg_or1vihdDavcjiP3vQB5dGAQStEg&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyY_VybL_yUqWbRF2XkZoLJOBMGeyGHinFvqOMR-n3yw&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkgPtAiZpFLsNtYfAV5b4-pROlWygGl5ro3ad0Xa01Bw&s=10',
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
          'Detail Mercedes-AMG GT3',
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
              // GALERI FOTO MOBIL
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

              // INDIKATOR FOTO
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

              // NAMA MOBIL
              const Text(
                'Mercedes-AMG GT3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Professional GT Racing Car',
                style: TextStyle(
                  color: Color(0xFF73B7FF),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 20),

              // DESKRIPSI MOBIL
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
                'Mercedes-AMG GT3 merupakan mobil balap yang '
                'dikembangkan khusus untuk kompetisi motorsport '
                'kategori GT3. Mobil ini menggunakan mesin V8 '
                'berkapasitas 6.3 liter yang dirancang untuk '
                'menghasilkan performa tinggi di lintasan. '
                'Dilengkapi bodi aerodinamis, sayap belakang besar, '
                'serta sistem pengereman balap, GT3 dirancang '
                'untuk menghadapi tikungan dan kecepatan tinggi '
                'dalam kompetisi.',
                style: TextStyle(
                  color: Color(0xFFCAD5E8),
                  fontSize: 14,
                  height: 1.7,
                ),
              ),

              const SizedBox(height: 24),

              // HARGA DAN KEUNGGULAN
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
                      'Rp12.000.000 / hari',
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
                      'Mesin V8 berperforma tinggi',
                    ),
                    keunggulan(
                      Icons.air,
                      'Paket aerodinamika balap',
                    ),
                    keunggulan(
                      Icons.tire_repair,
                      'Ban khusus kompetisi',
                    ),
                    keunggulan(
                      Icons.sports_motorsports,
                      'Dirancang untuk balapan GT3',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // TOMBOL SEWA
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
                          'Fitur sewa Mercedes-AMG GT3 belum diaktifkan.',
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

  // WIDGET KEUNGGULAN
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
          Expanded(
            child: Text(
              teks,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
