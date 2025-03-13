import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWeatherScreen(),
    );
  }
}

class MyWeatherScreen extends StatelessWidget {
  const MyWeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 103, 145, 6),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box_outlined, color: Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 227, 232, 200),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Today',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            const Text(
              '28°C',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const Divider(height: 20, thickness: 1),
            const SizedBox(height: 10),
            const Text(
              'Sunny',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 5),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.ac_unit, color: Colors.blue),
                SizedBox(width: 5),
                Text(
                  '5 km/h',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 184, 174, 152),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Next 7 days',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: ['Now', '17.00', '20.00', '23.00']
                        .map((time) => _weatherColumn(time))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
        ),
    );
      
}
}

