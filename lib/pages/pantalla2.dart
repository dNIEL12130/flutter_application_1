import 'package:flutter_application_1/pages/pantalla3.dart';
import 'package:flutter_application_1/pages/pantalla4.dart';
import 'package:flutter_application_1/pages/pantalla5.dart';
import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla2"),   
      ),
      body: Container(
        width: 800,
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://img.pikbest.com/back_our/bg/20200602/bg/19b3888f1e139_337891.png!w700wp"),
          fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30,10,40,20),
              width: 250,
              height: 47,
              child: const Text("Descubre el universo de una manera nunca antes vista.", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30,10,30,20),
              width: 330,
              height: 300,
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Pantalla3()));
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(color: Colors.black),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNTGVa2PesbcPWWikVePLkDVNZmWVaYpQA1Q&s"),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Pantalla4()));
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(color: Colors.black),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTH2x1GHUN8FKFXyeyQThuB13JQCrILDfRsA&s")
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Pantalla4()));
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(color: Colors.black),
                          child: Image.network("https://i0.wp.com/gouyuni.com/wp-content/uploads/2017/10/IMG_0173_Original-scaled.jpg?fit=1707%2C2560&ssl=1"),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Pantalla4()));
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(color: Colors.black),
                          child: Image.network("https://ecosistemas.win/wp-content/uploads/sistema-solar.jpg")
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Pantalla5()));
                          }, child: const Text("ingresar")
                        )
                      )    
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}