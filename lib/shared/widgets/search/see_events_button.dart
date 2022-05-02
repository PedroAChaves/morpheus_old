import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';

class SeeEventsButtom extends StatefulWidget {
  final Icon icon;
  final Text text;
  final String pagePath;

  const SeeEventsButtom(
      {Key? key,
      required this.icon,
      required this.text,
      required this.pagePath})
      : super(key: key);

  @override
  _SeeEventsButtomState createState() => _SeeEventsButtomState();
}

class _SeeEventsButtomState extends State<SeeEventsButtom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
            Colors.black,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(
                color: AppColors.primary,
                width: 1,
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.icon,
            widget.text,
          ],
        ),
      ),
    );
  }
}
