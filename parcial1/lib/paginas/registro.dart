import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class registro extends StatefulWidget {
  const registro({super.key});

  @override
  State<registro> createState() => _registroState();
}

class _registroState extends State<registro> {
   final List _campos=[_carnetinput(),_nombreinput(),_apellidoinput(),
   _direccioninput(),_passwordinput(),_repasswordinput(),
   _correoinput()] ;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
          SizedBox(height: 40,),
          Text("Parcial 1 - ETPS3!",style: TextStyle(fontSize: 30),),
          Text("Nombre:Ronald Heriberto Abarca Rivas  Carnte:25-1599-2019",style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
          Container(height: 200,width: 200,child: Image.asset("assets/imagen.jpg")),
          Expanded(child: 
             ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _campos.length,
              itemBuilder: (context,index)
              {
              return _campos[index];
              }
            ),
          )
        ]);
  }
}

Container _carnetinput(){
  return Container(
    padding:EdgeInsets.symmetric(horizontal: 25,),
    margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      
    ),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: "carnet",
        icon: Icon(Icons.add_card,),
        hintText: "carnet"
      )      
    ),
  );
}
Container _nombreinput(){
  return Container(
    padding:EdgeInsets.symmetric(horizontal: 25,),
    margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      
    ),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: "nombre",
        icon: Icon(Icons.account_box,),
        hintText: "nombre"
      )      
    ),
  );
}
Container _apellidoinput(){
  return Container(
    padding:EdgeInsets.symmetric(horizontal: 25,),
    margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      
    ),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: "apellido",
        icon: Icon(Icons.account_box_outlined,),
        hintText: "apellido"
      )      
    ),
  );
}
Container _direccioninput(){
  return Container(
    padding:EdgeInsets.symmetric(horizontal: 25,),
    margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      
    ),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: "direccion",
        icon: Icon(Icons.account_box_outlined,),
        hintText: "direccion"
      ),
      maxLines: 20,    
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
Container _repasswordinput(){
  return Container(
    padding:EdgeInsets.symmetric(horizontal: 25),
    margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black)
    ),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: "recontraseña",
        icon: Icon(Icons.shield,)
      ),
      obscureText: true
    ),
  );
}
Container _correoinput(){
  return Container(
    padding:EdgeInsets.symmetric(horizontal: 25),
    margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black)
    ),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: "correo",
        icon: Icon(Icons.shield,),
        hintText: "correo",
      ),
      keyboardType: TextInputType.multiline,
    ),
  );
}
