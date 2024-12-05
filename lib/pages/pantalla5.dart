import 'package:flutter_application_1/pages/pantalla6.dart';
import 'package:flutter_application_1/pages/pantalla7.dart';
import 'package:flutter_application_1/services/firebase_service.dart';
import 'package:flutter/material.dart';

class Pantalla5 extends StatefulWidget {
  const Pantalla5({super.key});

  @override
  State<Pantalla5> createState() => _Pantalla5State();
}

class _Pantalla5State extends State<Pantalla5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Pantalla 5"),
            FloatingActionButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Pantalla6()));
            }, child: const Icon(Icons.add)),
          ],
        ),
           
      ),
      body: Container(
        width: 800,
        padding: const EdgeInsets.all(1),
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://img.pikbest.com/back_our/bg/20200602/bg/19b3888f1e139_337891.png!w700wp"),
          fit: BoxFit.cover)
        ),
        child: const Personas(),
      ),
    );
  }
}

class Personas extends StatefulWidget {
  const Personas({super.key});

  @override
  State<Personas> createState() => _PersonasState();
}

class _PersonasState extends State<Personas> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getpersonas(), 
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    onTap: () async{
                      await Navigator.push(context, MaterialPageRoute(builder: (context)=> Pantalla7(
                          snapshot.data?[index]["nombre"], 
                          snapshot.data?[index]["uid"],
                          )
                        )
                      );
                    },
                    onLongPress: () {
                      alerta(context, 
                      snapshot.data?[index]["nombre"],
                      snapshot.data?[index]["uid"]
                      );
                    },
                    title: Column(
                      children: [
                        Text(snapshot.data?[index]["nombre"], 
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        }
        else{
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

void alerta(BuildContext context,String nombre,String uid){
  showDialog(context: context, 
  builder: (BuildContext){
      return AlertDialog(
        title: const Text("Borrar persona"),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("¿Desea borrar este elemento?")
          ],
        ),
        actions: [
          TextButton(onPressed: (){
            borrarpersona(uid).then((_){Navigator.pop(context);});
          }, child: const Text("borrar")),
          TextButton(onPressed: (){Navigator.pop(context);}, child: const Text("Cancelar"))
        ],
      );
    }
  );
}