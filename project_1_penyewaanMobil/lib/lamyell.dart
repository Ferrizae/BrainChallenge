import 'package:flutter/material.dart';

class Lamyell extends StatefulWidget {
  const Lamyell({Key? key}) : super(key: key);

  @override
  State<Lamyell> createState() => _LamyellState();
}

class _LamyellState extends State<Lamyell> {
  int halamanFoto = 0;

  final PageController controllerFoto = PageController();

  final List<String> fotoMobil = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQbHu6UCfucyw3aJ5ET0h3FzXAk0jiHllikjtZTck_rA&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9FIWJV7PWgQVMpoOlBD_S103H_MmBjuqkMYRTHnCvlQ&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaut566RBZNmZW370qmy548-xPtZrVEfjckkbCJVQeLw&s=10',
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
          'Deskripsi Lamborghini',
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
                        loadingBuilder: (context, child, progress) {
                          if (progress == null) return child;
                          return Container(
                            color: navy,
                            child: const Center(
                              child: CircularProgressIndicator(
                                color: biru,
                              ),
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: navy,
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
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: halamanFoto == index ? 22 : 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: halamanFoto == index
                                ? Colors.white
                                : Colors.white54,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                      'LAMBORGHINI COLLECTION',
                      style: TextStyle(
                        color: biru,
                        fontSize: 11,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Lamborghini Huracán',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Italian V10 Supercar',
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
                            'Rp6.000.000',
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
                      'Lamborghini Huracán adalah supercar asal Italia '
                      'yang dikenal dengan desain tajam, bodi rendah, '
                      'dan karakter mesin V10. Bentuknya yang agresif '
                      'serta tampilannya yang eksotis menjadikannya '
                      'pilihan menarik bagi penggemar mobil sport '
                      'berperforma tinggi.',
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
                      'Desain Agresif',
                      'Tampilan tajam dengan karakter supercar Italia.',
                    ),
                    const SizedBox(height: 12),
                    keunggulan(
                      'Mesin V10',
                      'Karakter mesin yang menjadi ciri khas Huracán.',
                    ),
                    const SizedBox(height: 12),
                    keunggulan(
                      'Gaya Eksklusif',
                      'Cocok untuk penggemar mobil sport eksotis.',
                    ),

                    const SizedBox(height: 28),

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
