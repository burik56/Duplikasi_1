import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Item Service Coffee'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(40, 30, 40, 60),
              decoration: const BoxDecoration(
                color: Colors.brown,  // Warna latar belakang kontainer
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(180),
                  bottomRight: Radius.circular(180),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.brown, blurRadius: 6, offset: Offset(1, 3))
                ]
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/coffee.jpg',
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
