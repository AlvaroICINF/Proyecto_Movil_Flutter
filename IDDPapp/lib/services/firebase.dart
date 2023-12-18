import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db= FirebaseFirestore.instance;

Future<List> getintegrante() async{
  List integrantes=[];
  CollectionReference collectionReferenceIntegrante = db.collection('integrantes');

  QuerySnapshot queryIntegrante = await collectionReferenceIntegrante.get();

  queryIntegrante.docs.forEach((documento) {
    integrantes.add(documento.data());
   });



  return  integrantes;
}