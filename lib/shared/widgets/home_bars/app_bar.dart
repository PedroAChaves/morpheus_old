import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';

class AppTopBar extends StatefulWidget with PreferredSizeWidget {
  const AppTopBar({Key? key}) : super(key: key);

  @override
  _AppTopBarState createState() => _AppTopBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppTopBarState extends State<AppTopBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      title: Center(
          child: Image.asset('images/title.png', height: 100, width: 110),
          ),
    );
  }
}
