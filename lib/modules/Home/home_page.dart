import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:morpheus/shared/themes/app_colors.dart';
import 'package:morpheus/shared/widgets/events/events.dart';
import 'package:morpheus/shared/widgets/skeleton/skeleton.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  List _events = [];
  bool _isLoading = true;

  Future<void> _refresh() async {
    try {
      var response = await http.get(Uri.parse('http://localhost:3000/events/'));
      setState(() => _events = jsonDecode(response.body));
    } catch (err) {
      print(err);
    }
    setState(() => _isLoading = false);
  }

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _isLoading
          ? Center(
              child: Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  for (var i = 0; i < 6; i++)
                    const Skeleton(
                      width: 180,
                      height: 220,
                      radius: 20,
                    )
                ],
              ),
            )
          : RefreshIndicator(
              onRefresh: _refresh,
              key: _refreshIndicatorKey,
              color: AppColors.primary,
              child: GridView.builder(
                itemCount: _events.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 360,
                  mainAxisExtent: 210,
                ),
                itemBuilder: (context, index) {
                  return EventCard(
                    title: _events[index]['name'],
                    organizerName: _events[index]['organizer_name'],
                    coverUrl: _events[index]['cover_url'],
                    startDateTime: DateTime.now(),
                  );
                },
              ),
            ),
    );
  }
}
