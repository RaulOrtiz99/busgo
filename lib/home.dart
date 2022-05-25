import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color.fromARGB(255, 255, 87, 27),
          hoverColor: Color.fromARGB(255, 16, 161, 28),
          onPressed: () => _showModalBottomSheet(context),
          icon: Icon(Icons.directions_bus_sharp),
          label: Text('Ver lineas'),
        ),
        appBar: AppBar(
          title: Text("Inicio"),
          backgroundColor: Color.fromARGB(255, 16, 161, 28),
          elevation: 0.5,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.change_history),
                title: const Text('Opcion1'),
                onTap: () {
                  // change app state...
                  Navigator.pop(context); // close the drawer
                },
              ),
              ListTile(
                leading: const Icon(Icons.change_history),
                title: const Text('Opcion2'),
                onTap: () {
                  // change app state...
                  Navigator.pop(context); // close the drawer
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            child: Container(
              width: 500,
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).viewPadding.top,
              decoration: const BoxDecoration(
                color: Colors.white10,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Image.asset('assets/images/mapa1.jpg')],
                ),
              ),
            ),
          ),
        ));
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
        backgroundColor: Color.fromARGB(255, 16, 161, 28),
        context: context,
        builder: (context) {
          // ignore: avoid_unnecessary_containers
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 100,
                          height: 120,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Buscar",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 16, 161, 28),
                                ),
                              ),
                              Text(
                                "Lineas",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 16, 161, 28),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 0,
                          child: Container(
                            width: 50,
                            height: 60,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Color.fromARGB(255, 255, 87, 27),
                            ),
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 100,
                          height: 120,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Ver Lineas",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 16, 161, 28),
                                ),
                              ),
                              Text(
                                "Cerca",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 16, 161, 28),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 0,
                          child: Container(
                            width: 50,
                            height: 60,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Color.fromARGB(255, 255, 87, 27),
                            ),
                            child: const Icon(
                              Icons.radar_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 100,
                          height: 120,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Directorio",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 16, 161, 28),
                                ),
                              ),
                              Text(
                                "de rutas",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 16, 161, 28),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 0,
                          child: Container(
                            width: 50,
                            height: 60,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: const Color.fromARGB(255, 255, 87, 27),
                            ),
                            child: const Icon(
                              Icons.bus_alert_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          );
        });
  }
}
