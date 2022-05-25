import 'package:busgo/home.dart';
import 'package:busgo/registro.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 500,
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).viewPadding.top,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 16, 161, 28),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 350),
                  Column(
                    children: [
                      const Text(
                        "Inicio de sesión",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          cursorColor: const Color.fromARGB(255, 221, 218, 218),
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            color: const Color.fromARGB(255, 221, 218, 218),
                          ),
                          decoration: InputDecoration(
                            labelText: 'Teléfono',
                            // ignore: prefer_const_constructors
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              //   fontWeight: FontWeight.bold,
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(209, 25, 114, 3),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                          cursorColor: const Color.fromARGB(255, 221, 218, 218),
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            color: const Color.fromARGB(255, 221, 218, 218),
                          ),
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            // ignore: prefer_const_constructors
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              //   fontWeight: FontWeight.bold,
                            ),

                            // hintText: 'Enter your password',
                            filled: true,
                            fillColor: Color.fromARGB(209, 25, 114, 3),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        primary: const Color.fromARGB(255, 255, 87, 27),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: const Text(
                        "Iniciar sesion",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Aun no tienes una cuenta?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        child: const Text(
                          "Registrate",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 87, 27),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              child: Material(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                elevation: 5,
                shadowColor: Colors.black,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                  width: 500,
                  height: 300,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "BussGo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 87, 27),
                            fontSize: 30,
                          ),
                        ),
                        Image.asset(
                          'assets/images/logo.png',
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
