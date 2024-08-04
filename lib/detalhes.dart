import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/card.dart';
import 'package:my_project/styles.dart';

class Detalhes extends StatelessWidget {
  const Detalhes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: 450,
                    margin: EdgeInsets.all(12),
                    padding: EdgeInsets.all(8),
                    height: 600,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 250, 239, 239),
                    ),
                    child: Image.asset(
                      '../assets/camMas8.png',
                      height: 440,
                      width: 440,
                    ),
                  ),
                  Row(
                    children: [
                      cardDetalhe('../assets/detalhes1.png'),
                      cardDetalhe('../assets/detalhes2.png'),
                      cardDetalhe('../assets/detalhes3.png'),
                      cardDetalhe('../assets/detalhes4.png'),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    width: 320,
                    child: Text(
                      'Manto Flamengo Manga Longa Jogo 1 Adidas 2024',
                      maxLines: null, // Permite linhas ilimitadas
                      overflow: TextOverflow.visible,
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Cód: 12640905179802',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  divider(320, 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'R\$449,99',
                      style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 98, 8, 1),
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Text(
                    'Ou 6x de R\$74,99',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      'Selecione um tamanho:',
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Row(
                    children: [
                      cardTamanho('P'),
                      cardTamanho('M'),
                      cardTamanho('G'),
                      cardTamanho('GG'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Personalizar camisa',
                          style: GoogleFonts.poppins(
                              fontSize: 22, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 74,
                        ),
                        const Icon(
                          Icons.add,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 320,
                        child: Text(
                          'Deseja incluir outros patrocínios',
                          maxLines: null, // Permite linhas ilimitadas
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.poppins(
                              fontSize: 22, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const Icon(
                        Icons.add,
                        size: 24,
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 320,
                    margin: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 98, 8, 1),
                    ),
                    child: Text(
                      'Comprar +',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Calcular o frete:',
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
            width: 220,
            height: 70,
             child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    label: Text('Digite seu cep...'),
                    filled: true,
                    fillColor:  Color.fromARGB(255, 240, 232, 232),
                    contentPadding: EdgeInsets.all(8)),
              ),
                       ),
           ),
           Container(
                    height: 50,
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Text(
                      'Calcular',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Veja produtos semelhantes:',
              style: GoogleFonts.poppins(
              fontSize: 32, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
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
          Container(
            width: 820,
            height: 260,
            color: const Color.fromARGB(255, 98, 8, 1),
            child: Column(
              children: [
                Image.asset('../assets/logo.png', width: 170,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Informações',
                        style: GoogleFonts.poppins( color: Colors.white,
                        fontSize: 24, fontWeight: FontWeight.bold),), 
                        Text('Quem Somos',
                      style: GoogleFonts.poppins( color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w500),),
                      Text('Fale Conosco',
                      style: GoogleFonts.poppins( color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w500),), 
                      Text('Produtos Licenciados',
                      style: GoogleFonts.poppins( color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w500),),  
                      Text('Nossas Lojas',
                      style: GoogleFonts.poppins( color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w500),), 
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Suporte',
                        style: GoogleFonts.poppins( color: Colors.white,
                        fontSize: 24, fontWeight: FontWeight.bold),), 
                        Text('Política de Privacidade',
                      style: GoogleFonts.poppins( color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w500),),
                      Text('Política de Entrega',
                      style: GoogleFonts.poppins( color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w500),), 
                      Text('Suporte de Cashback',
                      style: GoogleFonts.poppins( color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w500),),  
                      Text('Trocas e devoluções',
                      style: GoogleFonts.poppins( color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w500),), 
                      Text('Formas de pagamento',
                      style: GoogleFonts.poppins( color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w500),), 
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Minha Conta',
                        style: GoogleFonts.poppins( color: Colors.white,
                        fontSize: 24, fontWeight: FontWeight.bold),), 
                        Text('Meus dados',
                      style: GoogleFonts.poppins( color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w500),),
                      
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
           ),
        ],
      ),
    );
  }
}
