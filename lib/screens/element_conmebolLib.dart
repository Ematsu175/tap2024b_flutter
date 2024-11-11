import 'package:flutter/material.dart';

class ElementConmebolLib extends StatelessWidget {
  const ElementConmebolLib({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CONMEBOL LIBERTADORES'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Equipos con más títulos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              Transform.translate(
                offset: const Offset(0, 0),
                child: Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.01)
                    ..rotateY(0),
                  child: Container(
                    height: 200,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 217, 0)
                          .withOpacity(0.4),
                      borderRadius: const BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              22), // Mantiene el borde redondeado
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'Element_Ind.png',
                              fit: BoxFit.fill,
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
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.symmetric(vertical: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: new Text(
                                      'Finales Jugadas \n 7',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.symmetric(vertical: 34),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: Text(
                                      'Finales Ganadas \n 7',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Transform.translate(
                offset: const Offset(0, 0),
                child: Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.01)
                    ..rotateY(0),
                  child: Container(
                    height: 200,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 217, 0)
                          .withOpacity(0.4),
                      borderRadius: const BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              22), // Mantiene el borde redondeado
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'Element_BJ.png',
                              fit: BoxFit.fill,
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
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.symmetric(vertical: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: new Text(
                                      'Finales Jugadas \n 12',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.symmetric(vertical: 34),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: Text(
                                      'Finales Ganadas \n 6',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Transform.translate(
                offset: const Offset(0, 0),
                child: Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.01)
                    ..rotateY(0),
                  child: Container(
                    height: 200,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 217, 0)
                          .withOpacity(0.4),
                      borderRadius: const BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              22), // Mantiene el borde redondeado
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'Element_Penarol.png',
                              fit: BoxFit.fill,
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
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.symmetric(vertical: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: new Text(
                                      'Finales Jugadas \n 10',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.symmetric(vertical: 34),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: Text(
                                      'Finales Ganadas \n 5',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Transform.translate(
                offset: const Offset(0, 0),
                child: Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.01)
                    ..rotateY(0),
                  child: Container(
                    height: 200,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 217, 0)
                          .withOpacity(0.4),
                      borderRadius: const BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              22), // Mantiene el borde redondeado
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'Element_River.png',
                              fit: BoxFit.fill,
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
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.symmetric(vertical: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: new Text(
                                      'Finales Jugadas \n 7',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.symmetric(vertical: 34),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: Text(
                                      'Finales Ganadas \n 4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Transform.translate(
                offset: const Offset(0, 0),
                child: Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.01)
                    ..rotateY(0),
                  child: Container(
                    height: 200,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 217, 0)
                          .withOpacity(0.4),
                      borderRadius: const BorderRadius.all(Radius.circular(22)),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              22), // Mantiene el borde redondeado
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'Element_EDLP.png',
                              fit: BoxFit.fill,
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
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.symmetric(vertical: 34),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: new Text(
                                      'Finales Jugadas \n 5',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.symmetric(vertical: 34),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: Text(
                                      'Finales Ganadas \n 4',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
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