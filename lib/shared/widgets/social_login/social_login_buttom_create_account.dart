import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';

class CreateAccountButtom extends StatelessWidget {
  final VoidCallback onTap;
  const CreateAccountButtom({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.primary)),
        onPressed: () => onTap,
        child: const Text(
          "Fazer login",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ), //Text
      ),
    );
  }
}
