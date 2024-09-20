import 'package:flutter/material.dart';

void main() {
  runApp(MovingBackgroundApp());
}

class MovingBackgroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Background GIF dari URL
            Positioned.fill(
              child: Image.network(
                'https://cdn.dribbble.com/users/141880/screenshots/1718032/lightleak.gif', // URL GIF
                fit: BoxFit.cover,
              ),
            ),
            // Konten di atas GIF
            Center(
              child: Text(
                'Content Over Background',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
