import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/componentes/card.dart';
import 'package:my_project/componentes/cardDetalhes.dart';
import 'package:my_project/componentes/footer.dart';
import 'package:my_project/componentes/styles.dart';

class Detalhes2 extends StatelessWidget {
  const Detalhes2({super.key});

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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
            cardDetalhes('../assets/camMas8.png', '../assets/detalhes1.png', '../assets/detalhes2.png', '../assets/detalhes3.png', '../assets/detalhes5.png',
            'Camisa Feminina Arbor Braziline', "R\$119,99", 'Cód:12640905179802', 'ou 6x de R\$ 74,99'),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Veja produtos semelhantes:',
              style: GoogleFonts.poppins(
              fontSize: 32, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Wrap(
            children: [
               cardProdutos("../assets/camMas.png", "Camisa Flamengo Proa Braziline", "R\$129,99"),
              cardProdutos("../assets/camMas6.png", "Manto Manga Longa Jogo 1 Adidas 2024", "R\$449,99"),
              cardProdutos("../assets/camMas7.png", "Manto Infantil Jogo 3 Adidas 2023", "R\$229,99"),
              cardProdutos("../assets/cammas2.png", "Camisa Flamengo Troféu Braziline", "R\$109,99"),
              cardProdutos("../assets/camMas3.png", "Camisa Flamengo Orla Braziline", "R\$129,99"),
              cardProdutos("../assets/camMas4.png", "Camisa Flamengo Tradição Braziline", "R\$159,99"),
              cardProdutos("../assets/camMas5.png", "Manto Flamengo Infantil Jogo 3 Adidas 2023", "R\$229,99"),
              cardProdutos("../assets/camFem.png", 'Camisa Feminina Arbor Braziline', "R\$119,99"),
            ],
          ),
          footer(),
        ],
      ),
    );
  }
}
