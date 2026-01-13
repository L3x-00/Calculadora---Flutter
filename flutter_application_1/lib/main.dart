import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ord.z Calculadora',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 253, 0, 0)),
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final TextEditingController _ctrlDisplay = TextEditingController(text: "");
  double aux1 = 0;
  double aux2 = 0;
  String operacion = "";

  void setAux1(String sim) {
    operacion = sim;
    aux1 = double.parse(_ctrlDisplay.text);
    _ctrlDisplay.text = "";
  }

  void setAux2() {
    aux2 = double.parse(_ctrlDisplay.text);
    _ctrlDisplay.text = "";
  }

  void calcular() {
    double resultado = 0;
    if (operacion == "+") {
      resultado = aux1 + aux2;
    } else if (operacion == "-") {
      resultado = aux1 - aux2;
    } else if (operacion == "*") {
      resultado = aux1 * aux2;
    } else if (operacion == "/") {
      resultado = aux1 / aux2;
    }
    _ctrlDisplay.text = "${resultado}";
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _ctrlDisplay,
              decoration: InputDecoration(labelText: ''),
            ),
            Text("123123"),

            Row(
              children: [
                Buttondark(numero: "AC"),
                Buttondark(numero: "()"),
                Buttondark(numero: "%"),
                Buttondark(numero: "/"),
              ],
            ),
            Row(
              children: [
                Buttondark(numero: "AC"),
                Buttondark(numero: "()"),
                Buttondark(numero: "%"),
                Buttondark(numero: "/"),
              ],
            ),
            Row(
              children: [
                Buttonlight(
                  numero: "7",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}7";
                  },
                ),
                Buttonlight(
                  numero: "8",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}8";
                  },
                ),
                Buttonlight(
                  numero: "9",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}9";
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setAux1("*");
                  },
                  child: Text("*"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setAux2();
                    calcular();
                  },
                  child: Text("="),
                ),
              ],
            ),
            Row(
              children: [
                Buttonlight(
                  numero: "4",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}4";
                  },
                ),
                Buttonlight(
                  numero: "5",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}5";
                  },
                ),
                Buttonlight(
                  numero: "6",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}6";
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setAux1("-");
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setAux2();
                    calcular();
                  },
                  child: Text("="),
                ),
              ],
            ),
            Row(
              children: [
                Buttonlight(
                  numero: "1",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}1";
                  },
                ),
                Buttonlight(
                  numero: "2",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}2";
                  },
                ),
                Buttonlight(
                  numero: "3",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}3";
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setAux1("+");
                  },
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setAux2();
                    calcular();
                  },
                  child: Text("="),
                ),
              ],
            ),
            Row(
              children: [
                Buttonlight(
                  numero: "4",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}4";
                  },
                ),
                Buttonlight(
                  numero: "0",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}0";
                  },
                ),
                Buttonlight(
                  numero: ".",
                  onClick: (String numero) {
                    print("Main:$numero");
                    _ctrlDisplay.text = "${_ctrlDisplay.text}.";
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setAux1("/");
                  },
                  child: Text("/"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setAux2();
                    calcular();
                  },
                  child: Text("="),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
