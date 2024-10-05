import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        'assets/Cat.jpg', // Image credit: Pexels, Halil İbrahim ÇETİN, Focus Photography of Gray and Brown Cat
        fit: BoxFit.cover,
      ),
    );
  }
}
