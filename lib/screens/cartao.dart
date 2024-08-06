import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/screens/finalizacao.dart';
import 'package:my_project/componentes/styles.dart';

class PagamentoCartao extends StatelessWidget {
  const PagamentoCartao({super.key});

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Text('Finalização da compra',
                style: GoogleFonts.poppins(
                fontSize: 32, fontWeight: FontWeight.w600),),
            ),
          ), 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(Icons.shopify, size: 50),
                divider(200, 1),
                const Icon(Icons.credit_card_outlined, size: 50),
                divider(200, 1),
                const Icon(Icons.check_box, size: 50),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Text('Método de pagamento',
                  style: GoogleFonts.poppins(
                  fontSize: 32, fontWeight: FontWeight.w600),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 360,
                height: 160,
                color:  const Color.fromARGB(255, 213, 207, 207),
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('../assets/cartao.png', width: 100, height: 100,),
                    Text('Cartão de crédito',
                  style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Container(
                width: 360,
                height: 160,
                color:  const Color.fromARGB(255, 240, 232, 232),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('../assets/pix.png', width: 90, height: 90,),
                    Text('Pix',
                  style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
            ],
          ),
         const SizedBox(
          height: 32,
         ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text('Número do cartão:',
                style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              width: 800,
              height: 60,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'XXXXXXXXXXX',
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
              ), ),),
              ///////////////////////////////////////////////
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: Text('Data de expiração:',
                style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              width: 390,
              height: 90,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'XX/XX/XXXX',
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
              ), ),),
                    ],
                  ),
                  ///////////////////////////////////////
                  Column(
                    children: [
                      Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: Text('CVV:',
                style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              width: 390,
              height: 90,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'XXX',
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
              ), ),),
                    ],
                  ),
                ],
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    const Icon(Icons.check_box_rounded, size: 32,),
                    const SizedBox(
                      width: 8,
                    ),
                    Text('Lembrar-me para uso futuro',
                  style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const Finalizacao())),
                child: Container(
                        height: 50,
                        width: 800,
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 98, 8, 1),
                        ),
                        child: Text(
                          'Continuar e finalizar compra',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
              ),
              ),      
        ],
      ),
    );
  }
}