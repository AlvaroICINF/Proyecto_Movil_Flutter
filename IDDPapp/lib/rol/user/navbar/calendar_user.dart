import 'package:flutter/material.dart';
import 'package:proyecto_iddp/dbTools/adddb.dart';
import 'package:proyecto_iddp/dbTools/readdb.dart';


class CalendarioUser extends StatefulWidget {
  const CalendarioUser({Key? key}) : super(key: key);

  @override
  _CalendarioUserState createState() => _CalendarioUserState();
}

class _CalendarioUserState extends State<CalendarioUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:AddData());
  }
}
