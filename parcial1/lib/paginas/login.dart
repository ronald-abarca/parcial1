import 'package:flutter/material.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
     return Column( 
      children: [Image.asset("assets/imagen.jpg"),
        _carnetinput(),
        _passwordinput(),
        
      ]
    );
  }
}

Container _carnetinput(){
  return Container(
    padding:EdgeInsets.symmetric(horizontal: 25,),
    margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black)
    ),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: "Usuario",
        icon: Icon(Icons.account_circle,)
      )      
    ),
  );
}

Container _passwordinput(){
  return Container(
    padding:EdgeInsets.symmetric(horizontal: 25),
    margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black)
    ),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: "contraseña",
        icon: Icon(Icons.shield,)
      ),
      obscureText: true,
    ),
  );
}

