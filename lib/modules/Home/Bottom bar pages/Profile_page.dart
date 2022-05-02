import 'package:flutter/material.dart';
import 'package:morpheus/shared/widgets/profile/account_buttons_list.dart';
import 'package:morpheus/shared/widgets/profile/account_nickname.dart';
import 'package:morpheus/shared/widgets/profile/bottom_edit.dart';
import 'package:morpheus/shared/widgets/profile/buttom_sign_out.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width * 0.96),
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.96),
          child: Column(
            children: [
              Row(
                children: const [
                  NicknamePage(
                    accountName: "Cristiano Ronaldo",
                    accountEmail: "eh_o_chris@gmail.com",
                    accountAvatarUrl:
                        "https://i0.statig.com.br/bancodeimagens/du/oh/pa/duohpari1d3eyg9iyvqw44y3w.jpg",
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    BottomEdit(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26),
                child: Row(
                  textDirection: TextDirection.ltr,
                  children: const [
                    Text(
                      'Minha Conta',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 26),
                  child: AccountsButtonList()),
              const Spacer(),
              Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: Row(
                    children: const [
                      ButtomSignOut(),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
