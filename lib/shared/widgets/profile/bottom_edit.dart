import 'package:flutter/material.dart';

class BottomEdit extends StatefulWidget {
  const BottomEdit({Key? key}) : super(key: key);

  @override
  State<BottomEdit> createState() => _BottomEditState();
}

class _BottomEditState extends State<BottomEdit> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        child: TextButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 255, 255, 255)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                  width: 2,
                ),
              ),
            ),
          ),
          child: const Text(
            "Editar perfil",
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
