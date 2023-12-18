import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_iddp/services/firebase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReadDb extends StatefulWidget {
  const ReadDb({Key? key}) : super(key: key);

  @override
  _ReadDbState createState() => _ReadDbState();
}

class _ReadDbState extends State<ReadDb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff29C4DB),
        title: Text(
          'Miembros ',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: FutureBuilder(
        future: getintegrante(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error al cargar los datos'),
            );
          } else if (!snapshot.hasData || (snapshot.data as List).isEmpty) {
            return const Center(
              child: Text('No hay datos disponibles'),
            );
          } else {
            List<dynamic> integrantes = snapshot.data as List<dynamic>;

            return ListView.builder(
              itemCount: integrantes.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> integranteData =
                    integrantes[index] as Map<String, dynamic>;

                String rut = integranteData['rut'].toString() ?? '';
                String nombres = integranteData['nombres'].toString() ?? '';
                String apellidos = integranteData['apellidos'].toString() ?? '';
                String local = integranteData['local'].toString() ?? '';
                String direccion = integranteData['direccion'].toString() ?? '';
                String telefono = integranteData['telefono'].toString() ?? '';
                String miembro = integranteData['miembro'].toString() ?? '';
                String sexo = integranteData['sexo'].toString() ?? '';
                Timestamp? fechaNacimiento =
                    integranteData['fechaNacimiento'] as Timestamp?;

                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rut: $rut',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          nombres,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    children: [
                      ListTile(
                        title: Text('Apellidos: $apellidos'),
                      ),
                      ListTile(
                        title: Text('Local: $local'),
                      ),
                      ListTile(
                        title: Text('Dirección: $direccion'),
                      ),
                      ListTile(
                        title: Text('Teléfono: $telefono'),
                      ),
                      ListTile(
                        title: Text('Miembro: $miembro'),
                      ),
                      ListTile(
                        title: Text('Género: $sexo'),
                      ),
                      ListTile(
                        title: Text('Fecha de Nacimiento: ${fechaNacimiento != null ? fechaNacimiento.toDate().toString() : 'N/A'}'),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        }),
      ),
    );
  }
}
