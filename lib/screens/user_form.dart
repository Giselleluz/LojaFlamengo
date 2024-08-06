import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/login/user.dart';
import 'package:my_project/login/user_provider.dart';
import 'package:my_project/screens/home_page.dart';


class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void save() {
      UserProvider userProvider = UserProvider.of(context) as UserProvider;

      //instancia da classe user um novo usuario
      User user =
          User(name: controllerName.text, password: controllerPassword.text);

      //salva um novo usuario
      userProvider.users.insert(0, user);

      userProvider.users.insert(1, user);

      //busca um novo usuario
      print(userProvider.users[0].name);
      print(userProvider.users[0].password);

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const HomePage()));
    }

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Image.asset(
              '../assets/loginImg.png',
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                    'Seja bem-vindo!',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
            ),
                Text(
                  'Faça seu login e continue',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
            Container(
              width: 600,
              height: 60,
              margin: const EdgeInsets.all(8),
              child: TextFormField(
                obscureText:
                    false, //setar verdadeiro ou falso, pra saber se vai mostrar,
                controller: controllerName,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 232, 232),
                  labelText: 'Nome',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(24.0)), // Define o borderRadius
                    borderSide: BorderSide.none, // Remove a borda
                  ),
                ),
              ),
            ),
            Container(
              width: 600,
              height: 60,
              margin: const EdgeInsets.all(8),
              child: TextFormField(
                obscureText:
                    true, //setar verdadeiro ou falso, pra saber se vai mostrar,
                controller: controllerPassword,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor:  Color.fromARGB(255, 240, 232, 232),
                  labelText: 'Senha',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(24.0)), // Define o borderRadius
                    borderSide: BorderSide.none, // Remove a borda
                  ),
                ),
              ),
            ),
            Container(
                width: 600,
                height: 60,
                margin: const EdgeInsets.all(8),
                child: TextButton(
                  onPressed: save,
                  child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 98, 8, 1)),
                    foregroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            24.0), // Ajuste o valor conforme necessário
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
