import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:morpheus/shared/widgets/bottom_sheet/pdf_viewer.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicketData extends StatefulWidget {
  const TicketData({
    Key? key,
  }) : super(key: key);

  @override
  State<TicketData> createState() => _TicketDataState();
}

class _TicketDataState extends State<TicketData> {
  bool _ticketUsed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120.0,
              height: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(width: 1.0, color: Colors.green),
              ),
              child: const Center(
                child: Text(
                  'Ingresso V.I.P',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            Image.asset("images/logo.png", width: 60),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            'Ingresso Show do Henrique e Juliano',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ticketDetailsWidget(
                  'Nome', 'Gabriel Lopes', 'Data', '28-08-2022'),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: ticketDetailsWidget('Lote', '3', 'Preço', '199.99'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: ticketDetailsWidget(
                    'Tipo', 'V.I.P', 'Documento', '264.605.348-70'),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 34),
          child: DottedLine(
            dashLength: 6,
            dashColor: Color.fromARGB(255, 111, 111, 111),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: GestureDetector(
            onTap: () {
              setState(() => _ticketUsed = !_ticketUsed);
            },
            child: Center(
              child: SizedBox(
                width: 230,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: _ticketUsed == false
                      ? QrImage(
                          data: "https://github.com/gabriellopes00",
                          version: QrVersions.auto,
                        )
                      : const Icon(
                          Icons.check_circle_outline,
                          size: 230,
                          color: Colors.green,
                        ),
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PDF()),
                )
              },
              icon: const Icon(
                Icons.insert_drive_file_rounded,
                size: 32,
              ),
            ),
            IconButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('QR Code do Ingresso'),
                  content: const Text(
                      'O QR Code do ingresso deve ser lido por algum dos administradores do evento para que este seja validado. Uma vez validado, este ingresso não poderá ser utilizado mais.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              icon: const Icon(
                Icons.info_outline_rounded,
                size: 32,
              ),
            )
          ],
        )
      ],
    );
  }
}

Widget ticketDetailsWidget(
  String firstTitle,
  String firstDesc,
  String secondTitle,
  String secondDesc,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            firstTitle,
            style: const TextStyle(color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              firstDesc,
              style: const TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            secondTitle,
            style: const TextStyle(color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              secondDesc,
              style: const TextStyle(color: Colors.black),
            ),
          )
        ],
      )
    ],
  );
}
