import 'package:flutter/material.dart';
import 'package:my_project/componentes/card.dart';
import 'package:my_project/componentes/circle_avatar.dart';
import 'package:my_project/componentes/footer.dart';
import 'package:my_project/screens/detalhes.dart';
import 'package:my_project/screens/carrinho.dart';
import 'package:my_project/componentes/slide.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/componentes/styles.dart';
import 'package:my_project/screens/detalhes2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('../assets/logo.png', width: 160,),
           const SizedBox(
            width: 400,
            height: 60,
             child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'O que você procura?',
                    filled: true,
                    fillColor:  Color.fromARGB(255, 240, 232, 232),
                    contentPadding: EdgeInsets.all(8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(15.0)), // Define o borderRadius
                      borderSide: BorderSide.none, // Remove a borda
                    ),
                  ),
                ),
              ),
           ),
            const SizedBox(
              width: 40,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const Carrinho())),
              child: 
              const Icon(
              Icons.shopping_cart_sharp,
              color: Color.fromARGB(183, 0, 0, 0),
              size: 32,
            ),),
            
            const SizedBox(
              width: 16,
            ),
            const Icon(
              Icons.person_2_rounded,
              color: Color.fromARGB(183, 0, 0, 0),
              size: 32,
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: Slide(),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: 
            Text('Coleções',
            style: GoogleFonts.poppins(
            fontSize: 24, fontWeight: FontWeight.bold),), 
          ),
               Padding(
             padding: const EdgeInsets.all(0),
             child: SizedBox(
              width: double.infinity,
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/camMas.png"),
                Text('Camisetas', style: txtNunitoBold(19)),
                    ],
                  ),
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/jaqueta.png"),
                Text('Jaquetas', style: txtNunitoBold(19)),
                    ],
                  ),
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/short.png"),
                 Text('Shorts', style: txtNunitoBold(19)),
                    ],
                  ),
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/polo.png"),
                Text('Polos', style: txtNunitoBold(19)),
                    ],
                  ),
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/calcado.png"),
                 Text('Calçados', style: txtNunitoBold(19)),
                    ],
                  ),
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/bone.png"),
                 Text('Bonés', style: txtNunitoBold(19)),
                    ],
                  ),
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/relogio.png"),
                 Text('Relógios', style: txtNunitoBold(19)),
                    ],
                  ),
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/mochila.png"),
                 Text('Mochilas', style: txtNunitoBold(19)),
                    ],
                  ),
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/caneca.png"),
                 Text('Canecas', style: txtNunitoBold(19)),
                    ],
                  ),
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/chaveiro.png"),
                 Text('Chaveiros', style: txtNunitoBold(19)),
                    ],
                  ),
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/bandeira.png"),
                 Text('Bandeiras', style: txtNunitoBold(19)),
                    ],
                  ),
                  Column(
                    children: [
                 circleAvatar(96, 96, "../assets/regata.png"),
                 Text('Regatas', style: txtNunitoBold(19)),
                    ],
                  ),
                ],
              ),
             ),
           ),
           Wrap(
            children: [
              GestureDetector(
              onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const Detalhes())),
              child: cardProdutos("../assets/camMas8.png", 'Camisa Feminina Arbor Braziline', "R\$119,99"),),
              GestureDetector(
              onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const Detalhes2())),
              child: cardProdutos("../assets/camMas7.png", "Manto Infantil Jogo 3 Adidas 2023", "R\$229,99"),),
              cardProdutos("../assets/camMas.png", "Camisa Flamengo Proa Braziline", "R\$129,99"),
              cardProdutos("../assets/camFem.png", "Manto Manga Longa Jogo 1 Adidas 2024", "R\$449,99"),
              cardProdutos("../assets/cammas2.png", "Camisa Flamengo Troféu Braziline", "R\$109,99"),
              cardProdutos("../assets/camMas3.png", "Camisa Flamengo Orla Braziline", "R\$129,99"),
              cardProdutos("../assets/camMas4.png", "Camisa Flamengo Tradição Braziline", "R\$159,99"),
              cardProdutos("../assets/camMas5.png", "Manto Flamengo Infantil Jogo 3 Adidas 2023", "R\$229,99"),
            ],
           ),
           footer(),
        ],
      )
        );
  }
}