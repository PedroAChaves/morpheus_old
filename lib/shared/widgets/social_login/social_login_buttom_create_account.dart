import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';

class CreateAccountButton extends StatefulWidget {
  final VoidCallback onTap;
  final String title;
  const CreateAccountButton(
      {Key? key, required this.onTap, required this.title})
      : super(key: key);

  @override
  State<CreateAccountButton> createState() => _CreateAccountButtonState();
}

class _CreateAccountButtonState extends State<CreateAccountButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.primary)),
        onPressed: () => widget.onTap,
        child: Text(
          widget.title,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ), //Text
      ),
    );
  }
}
