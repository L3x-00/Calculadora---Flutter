import 'package:flutter/material.dart';

class Buttonlight extends StatelessWidget{
  final String numero;
  final void Function(String) onClick;
  const Buttonlight({super.key, required this.numero,required this.onClick});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: () {
        print("Click $numero");
        this.onClick(this.numero);
      }, 
      child: Text(numero,style: TextStyle(fontSize: 20,color: Colors.black)),
      style: ButtonStyle(backgroundColor:WidgetStateProperty.all (const Color.fromARGB(255, 81, 223, 255))),
    );
  }
}
class Buttondark extends StatelessWidget{
  final String numero;
  const Buttondark({super.key, required this.numero});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: () {
        print("Click $numero");
      }, 
      child: Text(numero,style: TextStyle(fontSize: 20,color: Colors.black)),
      style: ButtonStyle(backgroundColor:WidgetStateProperty.all (const Color.fromARGB(255, 139, 141, 142))),
    );
  }
}
