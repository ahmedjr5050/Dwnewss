import 'package:commerce/pages/menu1.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

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
              child: Column(children: [
                Image.asset('asstes/Ellipse 3.png'),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.email),
                              labelText: 'Email',
                              contentPadding: EdgeInsets.only(
                                  left: 30, top: 10, bottom: 20),
                              labelStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Password',
                              suffixIcon: Icon(Icons.remove_red_eye),
                              contentPadding: EdgeInsets.only(
                                  left: 30, top: 10, bottom: 20),
                              labelStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            'Forget Password ?',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const Menue1();
                          },
                        ));
                      },
                      child: Container(
                          height: 66,
                          width: 250,
                          decoration: const BoxDecoration(
                              color: Color(0xff5BF550),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Center(
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Color(
                                    0xff4b6e79a3,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text('or create a New Account ?'),
                        ),
                      ],
                    )
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
