import 'package:flutter/material.dart';
import 'package:parcial1/paginas/menu.dart';

void main() {
  runApp(Inicio());
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:menu(),
      title: "Parcial 1",
    );
  }
}