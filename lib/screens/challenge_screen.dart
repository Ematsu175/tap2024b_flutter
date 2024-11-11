import 'package:flutter/material.dart';
import 'package:tap2024b/screens/element_conmebolLib.dart';
import 'package:tap2024b/screens/element_conmebolSud.dart';
import 'dart:math';

import 'package:tap2024b/screens/element_uefaChampions.dart';
import 'package:tap2024b/screens/element_uefaEuropa.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FUTBOL'),
        backgroundColor: Colors.black,
      ),
        body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Transform.translate(
                offset: Offset(0, 0),
                child: Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.01)
                    ..rotateY(1.5 * pi / 180),
                  child: Container(
                    height: 200,
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
                      borderRadius: const BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              22), // Mantiene el borde redondeado
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset(
                              'uefa_c.png',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 58),
                            padding: EdgeInsets.symmetric(vertical: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: 32,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ElementUefaChampions(),
                                        ),
                                      );
                                    },
                                    child: new Text(
                                      'Ver',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //segundo recuadro
              Transform.translate(
                offset: Offset(0, 0),
                child: Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.01)
                    ..rotateY(1.5 * pi / 180),
                  child: Container(
                    height: 200,
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
                      borderRadius: const BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              22), // Mantiene el borde redondeado
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset(
                              'uefa_e.png',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 58),
                            padding: EdgeInsets.symmetric(vertical: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: 32,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ElementUefaEuropa()
                                        ),
                                      );
                                    },
                                    child: new Text(
                                      'Ver',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
                
              const SizedBox(
                height: 30,
              ),
              //tercer recuadro
              Transform.translate(
                offset: Offset(0, 0),
                child: Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.01)
                    ..rotateY(1.5 * pi / 180),
                  child: Container(
                    height: 200,
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
                      borderRadius: const BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              0), // Mantiene el borde redondeado
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset(
                              'ConmebolLibertadores.png',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 58),
                            padding: EdgeInsets.symmetric(vertical: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: 32,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ElementConmebolLib()
                                        ),
                                      );
                                    },
                                    child: new Text(
                                      'Ver',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //cuarto recuadro
              Transform.translate(
                offset: Offset(0, 0),
                child: Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.01)
                    ..rotateY(1.5 * pi / 180),
                  child: Container(
                    height: 200,
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
                      borderRadius: const BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              22), // Mantiene el borde redondeado
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset(
                              'ConmebolSudamericana.png',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 58),
                            padding: EdgeInsets.symmetric(vertical: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: 32,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ElementConmebolSud()
                                        ),
                                      );
                                    },
                                    child: new Text(
                                      'Ver',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
