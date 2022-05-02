import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDF extends StatelessWidget {
  const PDF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Center(
          child: Image.asset('images/title.png', height: 100, width: 110),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.local_printshop_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.download),
          ),
        ],
      ),
      body: SfPdfViewer.asset(
        "files/eticket_emirates.pdf",
        pageLayoutMode: PdfPageLayoutMode.single,
        
      ),
    );
  }
}
