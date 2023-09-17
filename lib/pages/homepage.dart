import 'package:commerce/pages/signin.dart';
import 'package:flutter/material.dart';

class Homed extends StatelessWidget {
  const Homed({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 400,
            height: 800,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0.00, 0.00),
                end: const Alignment(-2.00, 2),
                colors: [const Color(0xFF36F925), Colors.white.withOpacity(0)],
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
                Center(child: Image.asset('asstes/Rectangle 3.png')),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    print('object');
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Signin();
                        },
                      ));
                    },
                    child: Container(
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                color: Color(
                                  0xff4B6E79A3,
                                ),
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ),
                        height: 66,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Color(0xff5BF550),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
