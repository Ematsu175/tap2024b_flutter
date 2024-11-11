import 'package:flutter/material.dart';

class ElementUefaEuropa extends StatelessWidget {
  const ElementUefaEuropa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UEFA CHAMPIONS LEAGUE'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Center(
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
              SizedBox(height: 20),

              // Aquí agregamos la Table
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'Sevilla_logo_PNG1.png', 
                          width: 100, 
                          height: 100, 
                        ),
                      ),
                      Container(
                        height:
                            120, 
                        alignment: Alignment
                            .center, 
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          '7',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'Element_Liverpool.png', 
                          width: 100, 
                          height: 100, 
                        ),
                      ),
                      Container(
                        height:
                            120, 
                        alignment: Alignment
                            .center, 
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          '3',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'Element_Juventus.png', 
                          width: 100, 
                          height: 100, 
                        ),
                      ),
                      Container(
                        height:
                            120, 
                        alignment: Alignment
                            .center, 
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          '3',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'Element_Inter.png', 
                          width: 100, 
                          height: 100, 
                        ),
                      ),
                      Container(
                        height:
                            120, 
                        alignment: Alignment
                            .center, 
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          '3',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'Element_AtleticoMadrid.png', 
                          width: 100, 
                          height: 100, 
                        ),
                      ),
                      Container(
                        height:
                            120, 
                        alignment: Alignment
                            .center, 
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          '5',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),
              const Text(
                'Aquí se puede mostrar más información sobre este elemento.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
