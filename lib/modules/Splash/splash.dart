import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';
import 'package:morpheus/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          Center(
              heightFactor: 50,
              child: Image.asset(
                AppImages.logoMorpheus,
                width: 254,
                height: 198,
              )),
        ],
      ),
    );
  }
}
