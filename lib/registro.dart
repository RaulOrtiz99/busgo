import 'package:busgo/home.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro"),
        backgroundColor: const Color.fromARGB(255, 16, 161, 28),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Ingrese sus datos",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 87, 27),
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  cursorColor: const Color.fromARGB(255, 221, 218, 218),
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: const Color.fromARGB(255, 221, 218, 218),
                  ),
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    // ignore: prefer_const_constructors
                    labelStyle: TextStyle(
                      color: Color.fromARGB(209, 25, 114, 3),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),

                    // hintText: 'Enter your password',
                    filled: true,
                    fillColor: const Color.fromARGB(255, 216, 216, 216),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  cursorColor: const Color.fromARGB(255, 221, 218, 218),
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: const Color.fromARGB(255, 221, 218, 218),
                  ),
                  decoration: InputDecoration(
                    labelText: 'Apellido',
                    // ignore: prefer_const_constructors
                    labelStyle: TextStyle(
                      color: Color.fromARGB(209, 25, 114, 3),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),

                    // hintText: 'Enter your password',
                    filled: true,
                    fillColor: const Color.fromARGB(255, 216, 216, 216),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  cursorColor: const Color.fromARGB(255, 221, 218, 218),
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: const Color.fromARGB(255, 221, 218, 218),
                  ),
                  decoration: InputDecoration(
                    labelText: 'Carnet de identidad',
                    // ignore: prefer_const_constructors
                    labelStyle: TextStyle(
                      color: Color.fromARGB(209, 25, 114, 3),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),

                    // hintText: 'Enter your password',
                    filled: true,
                    fillColor: const Color.fromARGB(255, 216, 216, 216),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  cursorColor: const Color.fromARGB(255, 221, 218, 218),
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: const Color.fromARGB(255, 221, 218, 218),
                  ),
                  decoration: InputDecoration(
                    labelText: 'Telefono',
                    // ignore: prefer_const_constructors
                    labelStyle: TextStyle(
                      color: Color.fromARGB(209, 25, 114, 3),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),

                    // hintText: 'Enter your password',
                    filled: true,
                    fillColor: const Color.fromARGB(255, 216, 216, 216),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    primary: Color.fromARGB(255, 255, 87, 27),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: const Text(
                    "Registrarse",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
