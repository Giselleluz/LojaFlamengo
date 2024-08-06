import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Finalizacao extends StatelessWidget {
  const Finalizacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            Image.asset(
              '../assets/logo.png',
              width: 170,
            ),
          ],
        ),
      ),
     
    );
  }
}