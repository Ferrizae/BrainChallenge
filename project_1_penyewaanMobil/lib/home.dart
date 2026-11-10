import 'package:flutter/material.dart';
import 'Ferrari1.dart';
import 'haas.dart';
import 'porshe.dart';
import 'Lamblu.dart';
import 'lamyell.dart';
import 'sportscar.dart';
import 'mobilsport.dart';
import 'mobilbalap.dart';
import 'chevrolet.dart';
import 'ferrarisport.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color merah = Color(0xFFE32636);
    const Color gelap = Color(0xFF080C15);
    const Color navy = Color(0xFF101D35);

    final List<Map<String, dynamic>> cars = [
      {
        'name': 'Ferrari F8 Tributo',
        'type': 'Luxury Sports Car',
        'price': 'Rp5.000.000',
        'image':
            'https://images.unsplash.com/photo-1592198084033-aade902d1aae?w=900',
        'page': Ferrari1(),
      },
      {
        'name': 'Bugatti Chiron',
        'type': 'Hypercar',
        'price': 'Rp3.500.000',
        'image':
            'https://images.unsplash.com/photo-1544636331-e26879cd4d9b?w=900',
        'page': Haas(),
      },
      {
        'name': 'Porsche Panamera',
        'type': 'Premium Sports Car',
        'price': 'Rp4.000.000',
        'image':
            'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=900',
        'page': Porshe(),
      },
      {
        'name': 'Lamborghini Aventador',
        'type': 'Super Sports Car',
        'price': 'Rp6.000.000',
        'image':
            'https://images.unsplash.com/photo-1621135802920-133df287f89c?w=900',
        'page': Lamblu(),
      },
      {
        'name': 'Lamborghini Huracan',
        'type': 'Italian Supercar',
        'price': 'Rp6.000.000',
        'image':
            'https://images.unsplash.com/photo-1511919884226-fd3cad34687c?w=900',
        'page': Lamyell(),
      },
      {
        'name': 'McLaren 720S',
        'type': 'British Supercar',
        'price': 'Rp8.000.000',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFyIKqDR1DoD9v01-JfUoSPXgUFrfNx2BAz9AStuOMyA&s=10',
        'page': Sportscar(),
      },
      {
        'name': 'Nissan GT-R R35',
        'type': 'Japanese High Performance Sport Car',
        'price': 'Rp3.500.000',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoi6vlO84MAI5nMMSnR80WsLDHQ8DNBfR49q8mNg9wVw&s=10',
        'page': Mobilsport(),
      },
      {
        'name': 'Mercedes-AMG GT3',
        'type': 'Professonal Racing Car',
        'price': 'Rp12.000.000',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkgPtAiZpFLsNtYfAV5b4-pROlWygGl5ro3ad0Xa01Bw&s=10',
        'page': Mobilbalap(),
      },
      {
        'name': 'Chevrolet Camaro SS',
        'type': 'American Muscle Car',
        'price': 'Rp8.500.000',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4VgAOXHNhJaKjh-_g7Rt7E-5e8jRQNkkqhEbCSvnqEg&s=10',
        'page': Chevrolet(),
      },
      {
        'name': 'Ferrari 488 Pista',
        'type': 'Performance Collection',
        'price': 'Rp15.000.000',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3PQzSyJvBunM9Q7StJodYhq2I7k82NoFk-yFJ7BGAag&s=10',
        'page': Ferrarisport(),
      },
    ];

    return Scaffold(
      backgroundColor: gelap,
      appBar: AppBar(
        backgroundColor: gelap,
        elevation: 0,
        title: const Row(
          children: [
            Icon(
              Icons.directions_car,
              color: merah,
              size: 28,
            ),
            SizedBox(width: 8),
            Text(
              'SportCar Rental',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
          ],
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
              const Text(
                'Temukan Mobil Impianmu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                'Sewa mobil sport favoritmu dengan mudah.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFCAD5E8),
                ),
              ),
              const SizedBox(height: 22),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF111827),
                      Color(0xFF153C70),
                      Color(0xFF1677C8),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(
                    color: const Color(0xFF37659A),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PREMIUM CAR RENTAL',
                      style: TextStyle(
                        color: Color(0xFFB8D8FF),
                        fontSize: 11,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Drive Your Dream',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Perjalanan istimewa dimulai dari mobil yang tepat.',
                      style: TextStyle(
                        color: Color(0xFFD7E5F7),
                        fontSize: 13,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.directions_car_filled,
                        color: Colors.white,
                        size: 38,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              const Text(
                'Mobil Pilihan',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Pilih kendaraan untuk perjalananmu.',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFFCAD5E8),
                ),
              ),
              const SizedBox(height: 17),
              ...cars.map((car) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 22),
                  decoration: BoxDecoration(
                    color: navy,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xFF29486F),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 18,
                        offset: const Offset(0, 7),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(19),
                        ),
                        child: Image.network(
                          car['image'],
                          height: 190,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 190,
                              color: const Color(0xFF17263D),
                              child: const Center(
                                child: Icon(
                                  Icons.directions_car,
                                  size: 55,
                                  color: Color(0xFF9FB5D3),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(17),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF111827),
                              Color(0xFF172E4F),
                              Color(0xFF1A355A),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(19),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              car['name'],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              car['type'],
                              style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xFFB8C7DC),
                              ),
                            ),
                            const SizedBox(height: 17),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 13,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFF203F68),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: const Color(0xFF355A87),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.access_time,
                                    size: 16,
                                    color: Color(0xFF73B7FF),
                                  ),
                                  const SizedBox(width: 7),
                                  const Text(
                                    'Per hari',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFFD0DCEE),
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    car['price'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: merah,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => car['page'],
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Lihat Detail',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
              const SizedBox(height: 12),
              const Center(
                child: Text(
                  'SPORTCAR RENTAL',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xFFB8C7DC),
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
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
}
