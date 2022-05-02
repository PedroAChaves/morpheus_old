import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';

class NicknamePage extends StatefulWidget {
  final String? accountAvatarUrl;
  final String accountName;
  final String accountEmail;

  const NicknamePage(
      {Key? key,
      required this.accountAvatarUrl,
      required this.accountEmail,
      required this.accountName})
      : super(key: key);

  @override
  State<NicknamePage> createState() => _NicknamePageState();
}

class _NicknamePageState extends State<NicknamePage> {
  @override
  Widget build(BuildContext context) {
    List<String> names = widget.accountName.split(' ');
    final String _initials = names.first.split('')[0] + names.last.split('')[0];

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: const Text(
                        "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nesciunt eveniet optio quos dignissimos pariatur, et delectus ut ipsum, deserunt, nihil quas suscipit dolorum iste tempore. Autem ab ipsa recusandae id!"),
                    actions: [
                      TextButton(
                        child: const Text("OK"),
                        onPressed: () => Navigator.pop(context, 'OK'),
                      )
                    ],
                  );
                },
              );
            },
            child: CircleAvatar(
              backgroundColor: AppColors.primary,
              foregroundImage: widget.accountAvatarUrl == null
                  ? null
                  : NetworkImage(widget.accountAvatarUrl as String),
              child: Text(
                _initials,
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              radius: 45,
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 220),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              // TODO: add line break for names
              children: [
                Text(
                  widget.accountName,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  widget.accountEmail,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
