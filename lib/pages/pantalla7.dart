import 'package:flutter_application_1/services/firebase_service.dart';
import 'package:flutter/material.dart';

class Pantalla7 extends StatelessWidget {
  const Pantalla7(this.nombre,this.uid, {super.key});
  final String nombre;
  final String uid;

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController(text: nombre);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla6"),
      ),
      body:Container(
        width: 500,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/15/08/23/stars-2643089_640.jpg"),
            fit: BoxFit.cover
            )
          ),
        child: Column(
          children: [
            const Text("ingresa un nuevo nombre",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white
              ),
            ),
            TextField(
              controller: name,
              decoration:  const InputDecoration(
                fillColor: Color.fromARGB(110, 255, 255, 255),
                filled: true,
                hintText: "Ingrese su correo electronico", 
                hintStyle: TextStyle(color: Colors.black),
              ),
              style: const TextStyle(color: Colors.black),
            ),
            ElevatedButton(onPressed: () async{
              await actualizarpersona(uid, name.text).then((_){Navigator.pop(context);});
            }, child: const Text("Actualizar"))
          ],
        ),
      )
    );
  }
}