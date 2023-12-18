import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db= FirebaseFirestore.instance;

Future<void> addIntegrante(String rut, String name, String lastName, String field, 
String address, String birth, String phoneNumber, String member, String gender) async{
  await db.collection('integrantes').add({'rut':rut,'nombres':name,'apellidos':lastName,'local':field,'direccion':address,
  'nacimiento':birth,'telefono':phoneNumber,'miembro':member,'sexo':gender});
  
}