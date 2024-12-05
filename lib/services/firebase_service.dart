import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db =FirebaseFirestore.instance;

Future<List> getpersonas() async{
  List personas =[];
  CollectionReference coleccionPersona = db.collection("personas");
  
  QuerySnapshot QueryPersonas = await coleccionPersona.get(); 

  for (var documento in QueryPersonas.docs) {
    final Map<String, dynamic> data = documento.data() as Map<String,dynamic>;
    final dato ={
      "nombre": data["nombre"],
      "uid": documento.id
    };
    personas.add(dato);
  }

  return personas;
}

Future<void> agregarpersona(String nombre) async{
  await db.collection("personas").add({"nombre": nombre});
}

Future<void> actualizarpersona(String uid, String newnombre) async{
  await db.collection("personas").doc(uid).set({"nombre": newnombre});
}

Future<void> borrarpersona(String uid) async{
  await db.collection("personas").doc(uid).delete();
}