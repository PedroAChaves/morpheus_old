import 'package:flutter/material.dart';
import 'package:morpheus/modules/Home/bottom_bar_pages/Favorites_page.dart';
import 'package:morpheus/modules/Home/bottom_bar_pages/Profile_page.dart';
import 'package:morpheus/modules/Home/bottom_bar_pages/Search_page.dart';
import 'package:morpheus/modules/Home/bottom_bar_pages/Tickets_page.dart';
import 'package:morpheus/modules/Home/home_page.dart';
import 'package:morpheus/shared/themes/app_colors.dart';
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
              selectedLabelStyle: const TextStyle(
                color: AppColors.light
              ),
              currentIndex: pageViewController.page?.round() ?? 0,
              onTap: (index) {
                pageViewController.jumpToPage(index);
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home, color: AppColors.light),
                  backgroundColor:AppColors.primary,
                ),
                BottomNavigationBarItem(
                  label: 'Pesquisar',
                  icon: Icon(Icons.search, color: AppColors.light),
                  backgroundColor:AppColors.primary,
                ),
                BottomNavigationBarItem(
                  label: 'Favoritos',
                  icon: Icon(Icons.favorite, color: AppColors.light),
                  backgroundColor:AppColors.primary,
                ),
                BottomNavigationBarItem(
                  label: 'Ingressos',
                  icon: Icon(Icons.bookmark, color: AppColors.light),
                  backgroundColor:AppColors.primary,
                ),
                BottomNavigationBarItem(
                  label: 'Perfil',
                  icon: Icon(Icons.person, color: AppColors.light),
                  backgroundColor: AppColors.primary,
                ),
              ],
            );
          }),
    );
  }
}
