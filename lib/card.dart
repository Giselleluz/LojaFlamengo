import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container cardProdutos(String img, String txt, String txt2){
  return Container(
            height: 450,
            width: 390,
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Color.fromARGB(255, 250, 239, 239),
              ),
            child: Column(
              children: [
                Image.asset(img, height: 300, width: 300,),
                Text(txt,
                style: GoogleFonts.poppins(
            fontSize: 16, fontWeight: FontWeight.bold),),
            Text(txt2,
                style: GoogleFonts.poppins( color: const Color.fromARGB(255, 151, 25, 16),
            fontSize: 24, fontWeight: FontWeight.bold),),
            Container(
              height: 40,
              width: 200,
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
                fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
              ],
            ),
           );
}

Container cardDetalhe (String img){
      return Container(
        width: 95,
        height:95,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Color.fromARGB(255, 250, 239, 239),),
        child: Image.asset(img),
      );
}

Container cardTamanho (String txt){
      return Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        width: 60,
        height:60,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Color.fromARGB(255, 250, 239, 239),),
        child: Text(txt, style: GoogleFonts.poppins(color: const Color.fromARGB(255, 98, 8, 1), fontSize:24, fontWeight: FontWeight.w700),)
      );
}

