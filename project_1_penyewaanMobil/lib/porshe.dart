import 'package:flutter/material.dart';

class Porshe extends StatefulWidget {
  const Porshe({Key? key}) : super(key: key);

  @override
  State<Porshe> createState() => _PorsheState();
}

class _PorsheState extends State<Porshe> {
  int halamanFoto = 0;

  final PageController controllerFoto = PageController();

  final List<String> fotoMobil = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDjcSgR2DOJ_1VwAyKuzn1ZMayE3gEo4NcUTDq6pfQ7Q&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX1Shlgl399rp9IbR-Wjdmjc3j0mI7q5Z5eOuBu89m0g&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-v4YoJH5vQh5X5VNY7Qi0drl9w5lVeWotYGJkyg3kFA&s=10',
  ];

  @override
  void dispose() {
    controllerFoto.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color gelap = Color(0xFF080C15);
    const Color navy = Color(0xFF142A48);
    const Color merah = Color(0xFFE32636);
    const Color biru = Color(0xFF73B7FF);

    return Scaffold(
      backgroundColor: gelap,
      appBar: AppBar(
        backgroundColor: gelap,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Deskripsi Porsche Panamera',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Galeri foto Porsche
            SizedBox(
              height: 270,
              width: double.infinity,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: controllerFoto,
                    itemCount: fotoMobil.length,
                    onPageChanged: (index) {
                      setState(() {
                        halamanFoto = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.network(
                        fotoMobil[index],
                        width: double.infinity,
                        height: 270,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: navy,
                            child: const Center(
                              child: Text(
                                'Foto Porsche tidak dapat dimuat',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  Positioned(
                    right: 16,
                    bottom: 15,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: gelap.withOpacity(0.85),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '${halamanFoto + 1} / ${fotoMobil.length}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        fotoMobil.length,
                        (index) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            margin: const EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            width: halamanFoto == index ? 22 : 7,
                            height: 7,
                            decoration: BoxDecoration(
                              color: halamanFoto == index
                                  ? Colors.white
                                  : Colors.white54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Informasi Porsche
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF080C15),
                    Color(0xFF142A48),
                    Color(0xFF1A355A),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'PORSCHE COLLECTION',
                      style: TextStyle(
                        color: biru,
                        fontSize: 11,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Porsche Panamera',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Premium Sports Car',
                      style: TextStyle(
                        color: Color(0xFFCAD5E8),
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 22),

                    // Harga sewa
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(17),
                      decoration: BoxDecoration(
                        color: const Color(0xFF203F68),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: const Color(0xFF355A87),
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Harga Sewa Mulai Dari',
                            style: TextStyle(
                              color: Color(0xFFCAD5E8),
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            'Rp4.000.000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Per hari',
                            style: TextStyle(
                              color: biru,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      'Tentang Mobil',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Porsche Panamera merupakan mobil sport '
                      'asal Jerman yang dikenal dengan desain '
                      'ikoniknya, bentuk bodi yang aerodinamis, '
                      'dan karakter berkendara yang sporty. '
                      'Mobil ini cocok bagi kamu yang menyukai '
                      'perpaduan antara performa, kenyamanan, '
                      'dan tampilan elegan.',
                      style: TextStyle(
                        color: Color(0xFFCAD5E8),
                        fontSize: 14,
                        height: 1.7,
                      ),
                      textAlign: TextAlign.justify,
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      'Keunggulan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 14),

                    keunggulan(
                      'Desain Ikonik',
                      'Bentuk khas Porsche yang elegan dan sporty.',
                    ),

                    const SizedBox(height: 12),

                    keunggulan(
                      'Performa Sport',
                      'Dirancang untuk pengalaman berkendara yang dinamis.',
                    ),

                    const SizedBox(height: 12),

                    keunggulan(
                      'Kenyamanan Premium',
                      'Interior modern untuk perjalanan yang istimewa.',
                    ),

                    const SizedBox(height: 28),

                    // Tombol informasi penyewaan
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: merah,
                          foregroundColor: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Fitur penyewaan akan segera tersedia.',
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

                    const SizedBox(height: 25),

                    const Center(
                      child: Text(
                        'SPORTCAR RENTAL',
                        style: TextStyle(
                          color: Color(0xFF8FA5C3),
                          fontSize: 11,
                          letterSpacing: 2,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget keunggulan(String judul, String deskripsi) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF172E4F),
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: const Color(0xFF29486F),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            deskripsi,
            style: const TextStyle(
              color: Color(0xFFCAD5E8),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
