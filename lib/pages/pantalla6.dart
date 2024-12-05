import 'package:flutter_application_1/services/firebase_service.dart';
import 'package:flutter/material.dart';

class Pantalla6 extends StatelessWidget {
  Pantalla6({super.key});

  TextEditingController nombre = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla4"),
      ),
      body: Container(
        width: 800,
        padding: const EdgeInsets.all(1),
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://img.pikbest.com/back_our/bg/20200602/bg/19b3888f1e139_337891.png!w700wp"),
          fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text("Agrega un nombre", 
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(10),
               child: TextField(
                controller: nombre,
                decoration:  const InputDecoration(
                  fillColor: Color.fromARGB(110, 255, 255, 255),
                  filled: true,
                  hintText: "nombre", 
                  hintStyle: TextStyle(color: Colors.black),
                ),
                style: const TextStyle(color: Colors.black),
                           ),
             ),
             ElevatedButton(onPressed: (){
              agregarpersona(nombre.text).then((_){Navigator.pop(context);});
             }, child: const Text("Guardar"))
          ],
        ),
      ),
    );
  }
}