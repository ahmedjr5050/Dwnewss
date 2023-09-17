import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class Pdf extends StatefulWidget {
  final String pdfUrl;
  Pdf({required this.pdfUrl});
  static String id = 'Pdf';

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  late final String x; // Declare x as a late variable

  @override
  void initState() {
    super.initState();
    x = 'https://drive.google.com/uc?export=view&id=${widget.pdfUrl}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pdf'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        // Use a FutureBuilder to ensure x is initialized before building the PDF widget
        future: Future.value(x),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show loading indicator if x is not yet initialized
            return CircularProgressIndicator();
          } else {
            // x is initialized, build the PDF widget
            return PDF(
              enableSwipe: true,
              swipeHorizontal: false,
              autoSpacing: false,
              pageFling: true,
              fitEachPage: true,
              pageSnap: true,
              defaultPage: 0,
            ).fromUrl(x);
          }
        },
      ),
    );
  }
}
