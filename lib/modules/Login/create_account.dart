import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:morpheus/modules/Home/start_page.dart';

import '../../shared/themes/app_colors.dart';

enum SingingCharacter { Masculino, Feminino, Outro }

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  SingingCharacter? _character = SingingCharacter.Masculino;
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
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'Selecione seu gênero:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Masculino'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.Masculino,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Feminino'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.Feminino,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Outro'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.Outro,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'Insira sua data de nascimento:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: DOBInputField(
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  autovalidateMode: AutovalidateMode.disabled,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'Insira sua de perfil:',
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
                    suffixIcon: const Icon(Icons.add_photo_alternate_outlined,
                        color: Color(0xFFFC5404)),
                    border: const OutlineInputBorder(),
                    labelText: '',
                    floatingLabelStyle: TextStyle(color: AppColors.primary),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'Ou:',
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
                    border: const OutlineInputBorder(),
                    labelText: 'insira o link da foto',
                    floatingLabelStyle: TextStyle(color: AppColors.primary),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 100, top: 15, right: 100, bottom: 15),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.primary)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StartPage()),
                      );
                    },
                    child: const Text(
                      "Continuar",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ), //Text
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
