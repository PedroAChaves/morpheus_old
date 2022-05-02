import 'package:flutter/material.dart';
import 'package:morpheus/shared/widgets/search/see_events_button.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'images/mapa.jpg',
            scale: 1,
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width -
                MediaQuery.of(context).size.width * 0.97),
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.97),
            child: const Flexible(
              child: Text(
                'Explore eventos perto de você',
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width -
                MediaQuery.of(context).size.width * 0.97),
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.97),
            child: const Flexible(
              child: Text(
                'Encontre facilmente eventos ao seu redor, usar o mapa requer o uso da localização',
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff746565),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width -
                MediaQuery.of(context).size.width * 0.96),
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.96),
            child: const SeeEventsButtom(
              icon: Icon(Icons.my_location_rounded, color: Colors.white),
              text: Text(
                "Ver eventos perto de mim",
                style: TextStyle(color: Colors.white, fontSize: 18),
                // textAlign: TextAlign.center,
              ),
              pagePath: "pagePath",
            ),
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width -
                MediaQuery.of(context).size.width * 0.96),
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.96),
            child: const SeeEventsButtom(
              icon: Icon(Icons.location_on_outlined, color: Colors.white),
              text: Text(
                "Escolher uma cidade manualmente",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              pagePath: "pagePath",
            ),
          ),
        ],
      ),
    );
  }
}
