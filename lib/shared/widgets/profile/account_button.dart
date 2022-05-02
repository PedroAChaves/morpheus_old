import 'package:flutter/material.dart';

class AccountButton extends StatefulWidget {
  final Icon icon;
  final Text text;
  final String pagePath;

  const AccountButton(
      {Key? key,
      required this.icon,
      required this.text,
      required this.pagePath})
      : super(key: key);

  @override
  _AccountButtonState createState() => _AccountButtonState();
}

class _AccountButtonState extends State<AccountButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
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
        onPressed: () => Navigator.pushNamed(context, widget.pagePath),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
            Colors.black,
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            const Color(0xffe5e5e5),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: const BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 1,
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget.icon,
            widget.text,
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
