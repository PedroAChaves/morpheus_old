import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:morpheus/shared/themes/app_colors.dart';
import 'package:http/http.dart' as http;

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

    File imageFile;

    _uploadAvatar(String filename, String url) async {
      // try {
      //   var request = http.MultipartRequest('POST', Uri.parse(url));
      //   request.files.add(
      //     // await http.MultipartFile.fromBytes('account_avatar', imageFile),
      //   );
      //   var response = await request.send();
      //   var data =
      //       jsonDecode(String.fromCharCodes(await response.stream.toBytes()));
      //   print(data);
      // } catch (e) {
      //   print(e);
      //   showDialog(
      //     context: context,
      //     builder: (BuildContext context) => AlertDialog(
      //       title: const Text('Erro ao fazer o upload da foto de perfil'),
      //       content: const Text(
      //           'Houve um erro inesperado ao fazer o upload da imagem de perfil. Tente novamente mais tarde'),
      //       actions: [
      //         TextButton(
      //           onPressed: () => Navigator.pop(context, 'OK'),
      //           child: const Text('OK'),
      //         ),
      //       ],
      //     ),
      //   );
      // }
    }

    _getFromGallery() async {
      XFile pickedFile = (await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxWidth: 1800,
        maxHeight: 1800,
      )) as XFile;

      var uploadedFile = await pickedFile.readAsBytes();
      setState(() {
        imageFile = File(uploadedFile, "account_avatar");
      });
    }

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height - 200.0,
                    width: double.infinity,
                    child: Container(
                      decoration: const BoxDecoration(color: AppColors.light),
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () => _getFromGallery(),
                            child: const Text("Escolher nova imagem de perfil"),
                          ),
                          TextButton(
                            onPressed: () => _getFromGallery(),
                            child: const Text("Upload imagem"),
                          ),
                        ],
                      ),
                    ),
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
