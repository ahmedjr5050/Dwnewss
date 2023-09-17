import 'package:commerce/pages/menu2.dart';
import 'package:flutter/material.dart';

class Menue1 extends StatelessWidget {
  const Menue1({super.key});

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
                image: const DecorationImage(
                  image: AssetImage(
                      'asstes/Rectangle 3.png'), // Corrected image path
                ),
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
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Menu2();
                              },
                            ));
                          },
                          child: Container(
                            height: 390,
                            width: 230,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asstes/Filteration.png')),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 250, left: 50),
                              child: Text(
                                'Filtration',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 250, left: 50),
                            child: Text(
                              'Séchage',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          height: 390,
                          width: 230,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asstes/Rectangle 11.png')),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
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
