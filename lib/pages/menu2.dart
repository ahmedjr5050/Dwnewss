import 'package:commerce/pages/pdfpage.dart';
import 'package:commerce/services/servicesitem.dart';
import 'package:flutter/material.dart';

class Menu2 extends StatelessWidget {
  const Menu2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Container(
              width: 400,
              height: 800,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.00, 0.00),
                  end: const Alignment(-2.00, 2),
                  colors: [
                    const Color(0xFF36F925),
                    Colors.white.withOpacity(0)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(96),
                ),
              ),
              child: Column(
                children: [
                  Image.asset('asstes/Ellipse 3.png'),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: [
                        SingleChildScrollView(
                          child: ServiceItem(
                              image:
                                  'asstes/WhatsApp Image 2023-08-04 at 18.52.58_640x640.jpg',
                              text: 'Mécanique planifié'),
                        ),
                        SingleChildScrollView(
                          child: ServiceItem(
                              image:
                                  'asstes/WhatsApp Image 2023-08-04 at 18.53.42_640x640.jpg',
                              text: 'Réversion générale'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return PageForPdf();
                              },
                            ));
                          },
                          child: SingleChildScrollView(
                            child: ServiceItem(
                                image:
                                    'asstes/WhatsApp Image 2023-08-04 at 18.54.11_640x640.jpg',
                                text: 'Maintenence systèmatique'),
                          ),
                        ),
                        SingleChildScrollView(
                          child: ServiceItem(
                              image:
                                  'asstes/WhatsApp Image 2023-08-04 at 19.00.57_640x640.jpg',
                              text: 'Mécanique planifié'),
                        ),
                        ServiceItem(
                            image:
                                'asstes/WhatsApp Image 2023-08-04 at 19.01.24_593x640.jpg',
                            text: 'Safety'),
                        ServiceItem(
                            image:
                                'asstes/WhatsApp Image 2023-08-04 at 19.01.40_638x640.jpg',
                            text: 'Graissage')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
