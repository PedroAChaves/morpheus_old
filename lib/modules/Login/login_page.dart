import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';
import 'package:morpheus/shared/themes/app_images.dart';
import 'package:morpheus/shared/widgets/social_login/social_login_buttom.dart';
import 'package:morpheus/shared/widgets/social_login/social_login_buttom_create_account.dart';
import 'package:morpheus/shared/widgets/social_login/social_login_buttom_f.dart';

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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 170, left: 50, right: 50),
                  child: Image.asset(
                    AppImages.logoMorpheus,
                    width: 280,
                    height: 200,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
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
                    filled: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
              child: TextField(
                cursorColor: AppColors.primary,
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.primary, width: 2),
                    ),
                    border: const OutlineInputBorder(),
                    labelText: 'Senha',
                    floatingLabelStyle: TextStyle(color: AppColors.primary),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
              child: CreateAccountButtom(onTap: () {
                print('clicou');
              }),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: SocialLoginButton(onTap: () {
                      print('clicou');
                    }),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 6,
                    child: SocialLoginButtonF(onTap: () {
                      print('clicou');
                    }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Expanded(
                child: InkWell(
                    onTap: () {
                      print('object');
                    },
                    child: Text("Não tem conta, crie uma...",
                        style: TextStyle(color: AppColors.textWhite))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}