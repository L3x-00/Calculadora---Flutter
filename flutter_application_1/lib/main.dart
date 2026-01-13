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
        child: Column(children: [
          
          Row(children: [
            Buttondark(numero: "AC",),
            Buttondark(numero: "()",),
            Buttondark(numero: "%",),
            Buttondark(numero: "/",),
          ]),
          Row(children: [
            Buttonlight(numero: "7",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            Buttonlight(numero: "8",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            Buttonlight(numero: "9",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            Buttondark(numero: "x",)
          ]),
          Row(children: [
            Buttonlight(numero: "4",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            Buttonlight(numero: "5",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            Buttonlight(numero: "6",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            Buttondark(numero: "-",),
            
          ]),
          Row(children: [
            Buttonlight(numero: "1",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            Buttonlight(numero: "2",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            Buttonlight(numero: "3",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            Buttondark(numero: "+",),

          ]),
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
