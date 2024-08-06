import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container footer(){
  return Container(
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
           );
}