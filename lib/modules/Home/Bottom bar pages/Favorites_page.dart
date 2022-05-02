import 'package:flutter/material.dart';

import '../../../shared/widgets/tickets/tickets_widgets.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BougthTickets(
              organizerName: 'Apraz',
              startDateTime: DateTime.now(),
              title: 'Festa Glow',
            ),
            BougthTickets(
              organizerName: 'Apraz',
              startDateTime: DateTime.now(),
              title: 'Festa Glow',
            ),
            BougthTickets(
              organizerName: 'Apraz',
              startDateTime: DateTime.now(),
              title: 'Festa Glow',
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
            //   'Nenhum evento favoritado',
            //   style: TextStyle(
            //     color: Color(0xffAEAA9E),
            //     fontFamily: 'Inter',
            //     fontSize: 18,
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
