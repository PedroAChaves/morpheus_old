import 'package:flutter/material.dart';
import 'package:morpheus/shared/widgets/profile/account_button.dart';

class AccountsButtonList extends StatelessWidget {
  const AccountsButtonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Wrap(
        runSpacing: 8,
        children: const [
          AccountButton(
            icon: Icon(Icons.lock_open_outlined),
            text: Text("Alterar senha"),
            pagePath: "pagePath",
          ),
          AccountButton(
            icon: Icon(Icons.add_to_photos_outlined),
            text: Text("Criar um evento"),
            pagePath: "pagePath",
          ),
          AccountButton(
            icon: Icon(Icons.format_align_left_outlined),
            text: Text("Listar meus eventos"),
            pagePath: "pagePath",
          ),
          AccountButton(
            icon: Icon(Icons.info_outline),
            text: Text("Sobre o app"),
            pagePath: "/about",
          ),
        ],
      ),
    );
  }
}
