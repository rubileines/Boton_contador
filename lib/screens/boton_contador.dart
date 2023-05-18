//
import 'package:flutter/material.dart';

//crea la clase y el estadoi a cambiar
class BotonContador extends StatefulWidget {
  const BotonContador({super.key});
  _BotonContador createState() => _BotonContador();
}

//crear los widgets a mostrar
class _BotonContador extends State<BotonContador> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boton Contador'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Contador de clic"), Text('$contador')])),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add, size: 30),
              onPressed: () => setState(() => contador++)),
          FloatingActionButton(
              child: Icon(Icons.remove, size: 30),
              onPressed: () => setState(() => contador--)),
          FloatingActionButton(
              child: Icon(Icons.refresh, size: 30),
              onPressed: () => setState(() => contador = 0)),
        ],
      ),
    );
  }
}
