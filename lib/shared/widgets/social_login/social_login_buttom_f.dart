import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';
import 'package:morpheus/shared/themes/app_text_styles.dart';

class SocialLoginButtonF extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButtonF({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        width: 30,
        decoration: BoxDecoration(
            color: const Color(0xff3B5998),
            borderRadius: BorderRadius.circular(4),
            border:
                const Border.fromBorderSide(BorderSide(color: Color(0xff3B5998)))),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/logoFacebook.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 56,
                      width: 1,
                      color: AppColors.text,
                    )
                  ],
                )),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Facebook', style: TextStyles.facebookAccount),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
