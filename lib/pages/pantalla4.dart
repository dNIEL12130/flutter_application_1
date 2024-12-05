import 'package:flutter/material.dart';

class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla4"),
      ),
      body: Container(
        width: 500,
        padding: const EdgeInsets.all(60),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/15/08/23/stars-2643089_640.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(40,10,10,40),
              width: 400,
              height: 250,
              child: const Text("404\nERROR, \nINTENTE NUEVAMENTE.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}