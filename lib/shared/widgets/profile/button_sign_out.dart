import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';

class ButtonSignOut extends StatelessWidget {
  const ButtonSignOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
           borderRadius: const BorderRadius.all(Radius.circular(10),),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        height: 40,
        child: TextButton(
          onPressed: null,
          style: ButtonStyle(
            // overlayColor: MaterialStateProperty.all<Color>(
            //   AppColors.accent.withOpacity(1),
            // ),
            foregroundColor: MaterialStateProperty.all<Color>(
              AppColors.accent.withOpacity(1),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 255, 255, 255),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(
                  color: AppColors.accent,
                  width: 2,
                ),
              ),
            ),
          ),
          child: const Text(
            "Sair da conta",
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.accent,
            ),
          ),
        ),
      ),
    );
  }
}
