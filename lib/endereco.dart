import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/cartao.dart';

class Endereco extends StatelessWidget {
  const Endereco({super.key});

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
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Text('Endereço de entrega',
                style: GoogleFonts.poppins(
                fontSize: 32, fontWeight: FontWeight.w600),),
            ),
          ), 
          ///////////////////////////////////////////////////////////
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text('Nome completo:',
                style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          const Padding(padding: EdgeInsets.all(8),
          child: SizedBox(
            width: 370,
            height: 60,
             child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    label: Text('Gustavo Almeida Ferreira'),
                    filled: true,
                    fillColor:  Color.fromARGB(255, 240, 232, 232),
                    contentPadding: EdgeInsets.all(8)),
              ), ),),),
              ////////////////////////////////////////////////////////////////
           Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text('Telefone:',
                style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          const Padding(padding: EdgeInsets.all(8),
          child: SizedBox(
            width: 370,
            height: 60,
             child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    label: Text('+11 99999-9999'),
                    filled: true,
                    fillColor:  Color.fromARGB(255, 240, 232, 232),
                    contentPadding: EdgeInsets.all(8)),
              ),), ),),
              //////////////////////////////////////////////////
              Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text('Cep:',
                style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          const Padding(padding: EdgeInsets.all(8),
          child: SizedBox(
            width: 370,
            height: 60,
             child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    label: Text('00000-000'),
                    filled: true,
                    fillColor:  Color.fromARGB(255, 240, 232, 232),
                    contentPadding: EdgeInsets.all(8)),
              ),), ),),
              ///////////////////////////////////////////////////
              Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text('Nome da rua:',
                style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          const Padding(padding: EdgeInsets.all(8),
          child: SizedBox(
            width: 370,
            height: 60,
             child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    label: Text('Rua Nega'),
                    filled: true,
                    fillColor:  Color.fromARGB(255, 240, 232, 232),
                    contentPadding: EdgeInsets.all(8)),
              ),), ),),
              /////////////////////////////////////////
              Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text('Número da residência:',
                style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          const Padding(padding: EdgeInsets.all(8),
          child: SizedBox(
            width: 370,
            height: 60,
             child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    label: Text('41'),
                    filled: true,
                    fillColor:  Color.fromARGB(255, 240, 232, 232),
                    contentPadding: EdgeInsets.all(8)),
              ),), ),),
              ////////////////////////////////
              Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text('Complemento (opcional):',
                style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          const Padding(padding: EdgeInsets.all(8),
          child: SizedBox(
            width: 370,
            height: 60,
             child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    label: Text('Casa'),
                    filled: true,
                    fillColor:  Color.fromARGB(255, 240, 232, 232),
                    contentPadding: EdgeInsets.all(8)),
              ),), ),),
              ////////////////////////////////////////////////////
              Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text('Bairro:',
                style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          const Padding(padding: EdgeInsets.all(8),
          child: SizedBox(
            width: 370,
            height: 60,
             child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    label: Text('Presidente Altino'),
                    filled: true,
                    fillColor:  Color.fromARGB(255, 240, 232, 232),
                    contentPadding: EdgeInsets.all(8)),
              ),), ),),
              //////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Icon(Icons.check_box_rounded, size: 32,),
                    const SizedBox(
                      width: 8,
                    ),
                    Text('Definir como endereço padrão',
                  style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => PagamentoCartao())),
                child: 
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
                        'Continuar e finalizar compra',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),),
              ),
        ],
      ),
    );
  }
}