import 'package:flutter/material.dart';
import 'package:morpheus/modules/Home/Bottom%20bar%20pages/Search_page.dart';
import 'package:morpheus/modules/Home/Bottom%20bar%20pages/favorites_page.dart';
import 'package:morpheus/modules/Home/Bottom%20bar%20pages/profile_page.dart';
import 'package:morpheus/modules/Home/Bottom%20bar%20pages/tickets_page.dart';
import 'package:morpheus/modules/Home/home_page.dart';
import 'package:morpheus/shared/widgets/home_bars/app_bar.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final pageViewController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(),
      body: PageView(
        controller: pageViewController,
        children: const [
          MyHomePage(),
          SearchPage(),
          FavoritesPage(),
          TicketsPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              currentIndex: pageViewController.page?.round() ?? 0,
              onTap: (index) {
                pageViewController.jumpToPage(index);
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home),
                  backgroundColor: Color(0xFFFC5404),
                ),
                BottomNavigationBarItem(
                  label: 'Pesquisar',
                  icon: Icon(Icons.search),
                  backgroundColor: Color(0xFFFC5404),
                ),
                BottomNavigationBarItem(
                  label: 'Favoritos',
                  icon: Icon(Icons.favorite),
                  backgroundColor: Color(0xFFFC5404),
                ),
                BottomNavigationBarItem(
                  label: 'Ingressos',
                  icon: Icon(Icons.bookmark),
                  backgroundColor: Color(0xFFFC5404),
                ),
                BottomNavigationBarItem(
                  label: 'Perfil',
                  icon: Icon(Icons.person),
                  backgroundColor: Color(0xFFFC5404),
                ),
              ],
            );
          }),
    );
  }
}
