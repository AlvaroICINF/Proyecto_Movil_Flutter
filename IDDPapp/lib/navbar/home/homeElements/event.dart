import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_iddp/navbar/home/homeElements/timer.dart';
import 'dart:ui';


class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          color: Color(0xff86E6F4),
          elevation: 8,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: SizedBox(
            width: 300,
            height: 190,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Stack(children: <Widget>[
                Image.asset('assets/img/coro_polifonico.png',
                fit: BoxFit.cover,
                ),
                BackdropFilter(filter: 
                 ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                 child: Container(color: Colors.transparent),),
                 Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                       Center(child: Card(
                        color: Color.fromARGB(40, 0, 0, 0),
                        child: SizedBox(
                          width: 260,
                          height: 100,
                          child: Center(child: Text('CONCIERTO NAVIDEÑO', style: GoogleFonts.robotoMono(textStyle: const TextStyle(
                         fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),)),
                        ), 
                      ),
                      const SizedBox(height: 40,),
                      const Padding(padding: EdgeInsets.all(2)),
                      CountTimer(),
                 ],)
                 ]),
            ),
            ),
        ),
    );
  }
}
