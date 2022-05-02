import 'package:flutter/material.dart';

class EventCard extends StatefulWidget {
  final String title;
  final String organizerName;
  final DateTime startDateTime;

  const EventCard(
      {Key? key,
      required this.title,
      required this.organizerName,
      required this.startDateTime})
      : super(key: key);

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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
              child:
                  Image.asset('images/events/festaGlow.png', fit: BoxFit.fill),
            ),
            Container(
              height: 70,
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
                          color: Colors.amber[400],
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
