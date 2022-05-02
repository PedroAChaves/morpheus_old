import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: MyApp._title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialBanner(
      padding: EdgeInsets.all(20),
      content: Text('Hello, I am a Material Banner'),
      leading: Icon(Icons.agriculture_outlined),
      backgroundColor: Color(0xFFE0E0E0),
      actions: <Widget>[
        TextButton(
          onPressed: null,
          child: Text('OPEN'),
        ),
        TextButton(
          onPressed: null,
          child: Text('DISMISS'),
        ),
      ],
    );
  }
}
