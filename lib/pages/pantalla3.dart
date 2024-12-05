import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla3"),
      ),
      body: Container(
        width: 500,
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://img.freepik.com/foto-gratis/hermosa-foto-cielo-nocturno-estrellado_181624-11744.jpg?semt=ais_hybrid"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(40,40,40,40),
                      width: 250,
                      height:255,
                      child: const Text("Bajo el manto estrellado del desierto, contempla la majestuosa Luna a través de un telescopio profesional.\nApreciarás los detalles de su superficie, como cráteres y cadenas montañosas, en un entorno de paz y tranquilidad. \nSumérgete en la grandeza del cosmos, rodeado de la belleza natural del desierto. \nEsta inolvidable experiencia astronómica te acercará como nunca antes a nuestro satélite natural.", 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15),
                                       ),
                    ),  
                       ElevatedButton(onPressed: (){}, child: const Text('RESERVAR')) 
                  ]
                )
     )
    );
  }
}