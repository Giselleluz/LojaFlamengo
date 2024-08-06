import 'package:flutter/material.dart';
import 'package:my_project/login/user_provider.dart';
import 'package:my_project/screens/detalhes.dart';
import 'package:my_project/screens/endereco.dart';
import 'package:my_project/screens/home_page.dart';
import 'package:my_project/screens/telaInical.dart';
import 'package:my_project/screens/user_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UserProvider(
      child: MaterialApp(
      debugShowCheckedModeBanner: false, //tira a listra
      home: MyHomePage(),
      routes: {
          "/create": (_) => UserForm(),
        },
    ),
    );
  }
}

