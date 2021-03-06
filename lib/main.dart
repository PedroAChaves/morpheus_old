import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:morpheus/modules/Login/login_page.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const App());
}

//https://www.figma.com/file/wEszKrRonhLV9tm4UDd4tn/TCC?node-id=0%3A1

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Morpheus',
      theme: ThemeData(),
      darkTheme: ThemeData(backgroundColor: const Color.fromARGB(0, 0, 0, 0)),
      themeMode: ThemeMode.dark,
      home: const LoginPage(),
    );
  }
}
