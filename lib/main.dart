import 'package:flutter_application_1/pages/pantalla2.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Principal(),
    );
  }
}

class Principal extends StatelessWidget {
  const Principal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      width: 500,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/15/08/23/stars-2643089_640.jpg"),
          fit: BoxFit.cover
          )
        ),
      child:Column(
        children: [
          const Padding(padding: EdgeInsets.fromLTRB(20,10,10,20 )),
          const Text ("Bienvenido a la app de llama stargazing",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25 ,
            ),
          ),
          Image.asset("assets/logo-llama-edit.png"),
          
          const TextField(
            cursorWidth: 5,
            decoration:  InputDecoration(
              fillColor: Color.fromARGB(110, 255, 255, 255),
              filled: true,
              hintText: "Ingrese su correo electronico", 
              hintStyle: TextStyle(color: Colors.black),
              ),
              style: TextStyle(color: Colors.black),
              ),
           const  TextField(
            cursorWidth: 5,
            decoration: InputDecoration(
              fillColor: Color.fromARGB(110, 255, 255, 255),
              filled: true,
              hintText: "ingrese su contraseña",
              hintStyle: TextStyle(
                color: Colors.black
              )
            ),  
            style: TextStyle(color: Colors.black),
            ),
     
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Pantalla2()));
          }, 
          child: const Text("ingresar")
          )
        ],
      )
    )
    );
  }
}