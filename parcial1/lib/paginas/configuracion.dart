import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class configuracion extends StatefulWidget {
  const configuracion({super.key});

  @override
  State<configuracion> createState() => _configuracionState();
}

class _configuracionState extends State<configuracion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Configuracion")),
      body: Center(
        child: Text("Configuracion del sistema",
        style: TextStyle(fontSize: 22),
        )
      ),
    );
  }
}