import 'package:commerce/services/pdfservices.dart';
import 'package:flutter/material.dart';

class PdfContainer extends StatelessWidget {
  PdfContainer({required this.urlPdf, required this.textPdf});
  final String urlPdf;
  final String textPdf;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Pdf(pdfUrl: urlPdf)),
        );
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xfff4f3f4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.picture_as_pdf_rounded,
              size: 30,
              color: Colors.blue[800],
            ),
            SizedBox(height: 8), // Add spacing between icon and text
            Expanded(
              child: Text(
                textPdf,
                style: TextStyle(
                    fontSize: 18,
                    //fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Satisfy-Regular'),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
