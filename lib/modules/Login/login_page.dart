import 'package:flutter/material.dart';
import 'package:morpheus/modules/Home/start_page.dart';
import 'package:morpheus/modules/Login/create_account.dart';
import 'package:morpheus/shared/themes/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fundo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 90),
              child: Center(
                child: Image.asset(
                  "images/logo_title.png",
                  width: 280,
                  height: 200,
                  scale: 1,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 25, right: 25),
              child: TextField(
                cursorColor: AppColors.primary,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary, width: 2),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  floatingLabelStyle: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 25, right: 25),
              child: TextField(
                cursorColor: AppColors.primary,
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.primary, width: 2),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                    floatingLabelStyle: TextStyle(
                      color: AppColors.primary,
                      fontSize: 18,
                    ),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.primary)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StartPage()),
                    );
                  },
                  child: const Text(
                    'Fazer Login',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ), //Text
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.primary)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()),
                    );
                  },
                  child: const Text(
                    'Não tem conta, crie uma...',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ), //Text
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            //   child: Expanded(
            //     child: InkWell(
            //       onTap: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const CreateAccount()),
            //         );
            //       },
            //       child: const Text(
            //         "Não tem conta, crie uma...",
            //         style: TextStyle(color: AppColors.textWhite, fontSize: 18),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
