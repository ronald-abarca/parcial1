import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parcial1/paginas/configuracion.dart';
import 'package:parcial1/paginas/login.dart';
import 'package:parcial1/paginas/registro.dart';


class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  final List<Widget> _paginas=[login(),registro(),configuracion()];
  int _itemSeleccionado = 0;
  void _botones(int index){
    setState(() {
      _itemSeleccionado=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_paginas[_itemSeleccionado],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _itemSeleccionado,
        onTap: _botones,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.login),label: "login"),
          BottomNavigationBarItem(icon: Icon(Icons.app_registration),label: "registro"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "configuracion"),
        ]
      ),
    );
  }
}