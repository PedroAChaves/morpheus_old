import 'package:flutter/material.dart';

import '../../shared/themes/app_colors.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5e5e5),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Image.asset(
                    'images/logoLaranja.png',
                    width: 130,
                    height: 40,
                    scale: 1,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Text(
                  'Nome:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: TextField(
                  // autofocus: true,
                  cursorColor: AppColors.primary,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.primary, width: 2),
                    ),
                    border: const OutlineInputBorder(),
                    labelText: 'Informe seu nome completo',
                    floatingLabelStyle: TextStyle(color: AppColors.primary),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'Email:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: TextField(
                  cursorColor: AppColors.primary,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.primary, width: 2),
                    ),
                    border: const OutlineInputBorder(),
                    labelText: 'Email',
                    floatingLabelStyle: TextStyle(color: AppColors.primary),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'Senha:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: TextField(
                  cursorColor: AppColors.primary,
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.primary, width: 2),
                    ),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined,
                        color: Color(0xFFFC5404)),
                    border: const OutlineInputBorder(),
                    labelText: 'Senha',
                    floatingLabelStyle: TextStyle(color: AppColors.primary),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'Celular:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: TextField(
                  cursorColor: AppColors.primary,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.primary, width: 2),
                    ),
                    border: const OutlineInputBorder(),
                    labelText: 'Informe seu número de celular',
                    floatingLabelStyle: TextStyle(color: AppColors.primary),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'CPF:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: TextField(
                  cursorColor: AppColors.primary,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.primary, width: 2),
                    ),
                    border: const OutlineInputBorder(),
                    labelText: 'Informe seu CPF',
                    floatingLabelStyle: TextStyle(color: AppColors.primary),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
