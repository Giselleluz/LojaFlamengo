import 'package:flutter/material.dart';
import 'package:my_project/carrinho.dart';
import 'package:my_project/detalhes.dart';
import 'package:my_project/endereco.dart';
import 'package:my_project/finalizacao.dart';
import 'package:my_project/home_page.dart';
import 'package:my_project/cartao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //tira a listra
      home: HomePage(),
    );
  }
}

