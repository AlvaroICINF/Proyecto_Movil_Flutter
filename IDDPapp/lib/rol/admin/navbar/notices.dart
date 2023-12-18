import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvisosAdmin extends StatefulWidget {
  const AvisosAdmin({Key? key}) : super(key: key);

  @override
  _AvisosAdminState createState() => _AvisosAdminState();
}

class _AvisosAdminState extends State<AvisosAdmin> {
  @override
  Widget build(BuildContext context) {
    return //avisos
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('aviso 1'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('aviso 2'),
                ),
              ),
            ],
          ),
        );
  }
}
