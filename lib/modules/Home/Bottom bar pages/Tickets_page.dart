import 'package:flutter/material.dart';
import 'package:morpheus/shared/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:morpheus/shared/widgets/bottom_sheet/ticket.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height - 200.0,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const TicketWidget(
                        width: 350,
                        height: 400,
                        isCornerRounded: true,
                        padding: EdgeInsets.all(32),
                        child: TicketData(),
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              );
            },
            child: TicketWidget(
            width: 360,
            height: 150,
            child: Expanded(
                child: Row(
              children: [
                Image.asset(
                  "images/events/festaGlow.png",
                  width: 180,
                  height: 150,
                  fit: BoxFit.cover,
                  
                ),
                const Expanded(
                  child: Center(
                    child: Text("asdf"),
                  ),
                )
              ],
            )),
            color: const Color.fromARGB(255, 211, 211, 211),
          )
          ),
          
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Image.asset(
          //     'images/logo_sem_texto.png',
          //     height: 90,
          //     width: 120,
          //   ),
          // ),
          // const Text(
          //   'Nenhum ingresso comprado',
          //   style: TextStyle(
          //     color: Color(0xffAEAA9E),
          //     fontFamily: 'Inter',
          //     fontSize: 18,
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
        ],
      ),
    );
  }
}
