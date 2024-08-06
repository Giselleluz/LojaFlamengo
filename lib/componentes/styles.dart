import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Estilo com a fonte em negrito
TextStyle txtNunitoBold(double tamanho) {
  return GoogleFonts.nunitoSans(
    fontSize: tamanho,
    fontWeight: FontWeight.w700,
  );
}

//Estilo com a fonte normal
TextStyle txtNunito300(double tamanho) {
  return GoogleFonts.nunitoSans(
    fontSize: tamanho,
    fontWeight: FontWeight.w300,
  );
}

//Estilo com a fonte em negrito branco
TextStyle txtNunitoBoldWhite(double tamanho) {
  return GoogleFonts.nunitoSans(
    fontSize: tamanho,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
}

TextStyle txtNunitoBoldRed(double tamanho) {
  return GoogleFonts.nunitoSans(
    fontSize: tamanho,
    color: Colors.red,
    fontWeight: FontWeight.w700,
  );
}

TextStyle txtNunitoBoldGrey(double tamanho) {
  return GoogleFonts.nunitoSans(
    fontSize: tamanho,
    color: Colors.grey,
    fontWeight: FontWeight.w700,
  );
}

Container divider( double largura, double altura) {
  return Container(
    height: altura,
    width: largura, // Defina a altura desejada
    child: const Divider(
      color: Color.fromARGB(115, 63, 61, 61),
    ),
  );
}

InputDecoration caixaTxt (String label){
  return InputDecoration(
    label: Text(label),
    fillColor:   const Color.fromARGB(255, 240, 232, 232),
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color:  Color.fromARGB(255, 240, 232, 232),),
    )
  );
}