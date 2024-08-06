import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:my_project/screens/home_page.dart';
import 'package:my_project/screens/user_form.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      //Gih, essa parte aqui é aqueles pontinhos que marcam
      //em qual tela a pessoa está
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: Colors.black,
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
      showBackButton: true,
      next: Container(
                      height: 50,
                      width: 120,
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 98, 8, 1),
                      ),
                      child: Text(
                        'Próximo',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
      back: const Icon(Icons.arrow_back),
      done:Container(
                      height: 50,
                      width: 120,
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 98, 8, 1),
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
      onDone: () {
        //aqui vc redireciona pra próxima tela quando passar todos
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const UserForm()),
          (Route<dynamic> route) => false,
        );
      },
      pages: [
        PageViewModel(
            image: Align(
            alignment: Alignment.bottomCenter, // Alinha a imagem no centro inferior
            child: Image.asset(
              '../assets/undraw.png',
              width: 500, // Define a largura da imagem, se necessário
            ),
          ),
            titleWidget: Align(
            alignment: Alignment.center,
            child: Text('Viva a Paixão Rubro-Negra!',
            style: GoogleFonts.poppins(
            fontSize: 32, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,), 
          ),
          bodyWidget: Align(
            alignment: Alignment.center,
            child: Text(' Explore nossa coleção exclusiva de produtos oficiais do Flamengo. ',
            style: GoogleFonts.poppins(
            fontSize: 24, fontWeight: FontWeight.w500), textAlign: TextAlign.center,), 
          ),
        ),
        PageViewModel(
            image: Align(
            alignment: Alignment.bottomCenter, // Alinha a imagem no centro inferior
            child: Image.asset(
              '../assets/produtoScreen.png',
              width: 500, // Define a largura da imagem, se necessário
            ),
          ),
            titleWidget: Align(
            alignment: Alignment.center,
            child: Text('Produtos Oficiais e Exclusivos',
            style: GoogleFonts.poppins(
            fontSize: 32, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,), 
          ),
          bodyWidget: Align(
            alignment: Alignment.center,
            child: Text('Garanta os itens oficiais do Flamengo com qualidade e autenticidade garantidas.',
            style: GoogleFonts.poppins(
            fontSize: 24, fontWeight: FontWeight.w500), textAlign: TextAlign.center,), 
          ),
        ),
        // Adicione mais telas se quiser
      ],
    );
  }
}
