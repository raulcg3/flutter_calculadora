import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String operacion = '';
  double num1 = 0;
  double num2 = 0;
  double res = 0;

  void realizarOperacion() {
    if (operacion.contains('+')) {
      var numeros = operacion.split('+');
      num1 = double.parse(numeros[0]);
      num2 = double.parse(numeros[1]);
      res = num1 + num2;
    } else if (operacion.contains('-')) {
      var numeros = operacion.split('-');
      num1 = double.parse(numeros[0]);
      num2 = double.parse(numeros[1]);
      res = num1 - num2;
    } else if (operacion.contains('X')) {
      var numeros = operacion.split('X');
      num1 = double.parse(numeros[0]);
      num2 = double.parse(numeros[1]);
      res = num1 * num2;
    } else if (operacion.contains('/')) {
      var numeros = operacion.split('/');
      num1 = double.parse(numeros[0]);
      num2 = double.parse(numeros[1]);
      res = num1 / num2;
    }
    setState(() {
      operacion = res.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    const tamano30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
        elevation: 10.0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(operacion, style: tamano30, textAlign: TextAlign.right),
            GridPaper(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: FloatingActionButton(
                          onPressed: null,
                          child: Text('%'),
                        ),
                      ),
                      const Expanded(
                        child: FloatingActionButton(
                          onPressed: null,
                          child: Text('CE'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion = ''),
                          child: const Text('C'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion = operacion.substring(0, operacion.length - 1)),
                          child: const Icon(Icons.backspace),
                        ),
                      ),
                    ],
                  ),
                   Row(
                    children: [
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: null,
                          child: Text('1/x'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: null,
                          child: Text('xº'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: null,
                          child: Text('raizx'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '/'),
                          child: const Text('/'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '7'),
                          child: const Text('7'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '8'),
                          child: const Text('8'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '9'),
                          child: const Text('9'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += 'X'),
                          child: Text('X'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '4'),
                          child: const Text('4'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '5'),
                          child: const Text('5'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '6'),
                          child: const Text('6'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '-'),
                          child: const Text('-'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '1'),
                          child: const Text('1'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '2'),
                          child: const Text('2'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '3'),
                          child: const Text('3'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '+'),
                          child: const Text('+'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: FloatingActionButton(
                          onPressed: null,
                          child: Text('+/-'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += '0'),
                          child: const Text('0'),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => setState(() => operacion += ','),
                          child: const Text(','),
                        ),
                      ),
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () => realizarOperacion(),
                          child: const Text('='),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
