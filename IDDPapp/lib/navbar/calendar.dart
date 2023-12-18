import 'package:flutter/material.dart';
import 'package:proyecto_iddp/dbTools/adddb.dart';
import 'package:proyecto_iddp/dbTools/readdb.dart';


class Calendario extends StatefulWidget {
  const Calendario({Key? key}) : super(key: key);

  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:AddData());
  }
}
