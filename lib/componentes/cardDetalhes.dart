import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/componentes/card.dart';
import 'package:my_project/componentes/styles.dart';

Row cardDetalhes(String ft1, String ft2, String ft3, String ft4, String ft5, String txtProduto, String txtPreco, String txtCodigo, String txtParcelamento ){
  return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: 450,
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(8),
                    height: 600,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 250, 239, 239),
                    ),
                    child: Image.asset(
                      ft1,
                      height: 440,
                      width: 440,
                    ),
                  ),
                  Row(
                    children: [
                      cardDetalhe(ft2),
                      cardDetalhe(ft3),
                      cardDetalhe(ft4),
                      cardDetalhe(ft5),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: 320,
                    child: Text(
                      txtProduto,
                      maxLines: null, // Permite linhas ilimitadas
                      overflow: TextOverflow.visible,
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      txtCodigo,
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  divider(320, 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      txtPreco,
                      style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 98, 8, 1),
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Text(
                    txtParcelamento,
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
                        padding: const EdgeInsets.all(10),
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
                    labelText: 'Digite seu cep...',
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
          );
}