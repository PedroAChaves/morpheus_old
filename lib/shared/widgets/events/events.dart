import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';

class EventCard extends StatefulWidget {
  final String title;
  final String organizerName;
  final String coverUrl;
  final DateTime startDateTime;

  const EventCard({
    Key? key,
    required this.title,
    required this.organizerName,
    required this.coverUrl,
    required this.startDateTime,
  }) : super(key: key);

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 190,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            SizedBox(
              height: 120,
              width: 190,
              child: Image.network(widget.coverUrl, fit: BoxFit.fill),
            ),
            Container(
              height: 75,
              padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.title),
                      Text(widget.startDateTime.day.toString()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.organizerName),
                      IconButton(
                        onPressed: () {
                          setState(() => _isLiked = !_isLiked);
                        },
                        icon: Icon(
                          _isLiked ? Icons.star : Icons.star_border,
                          color: AppColors.accent,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
